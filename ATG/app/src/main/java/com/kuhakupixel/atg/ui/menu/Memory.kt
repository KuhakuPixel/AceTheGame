package com.kuhakupixel.atg.ui.menu

import android.content.res.Configuration
import android.util.Log
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.material.SnackbarDuration
import androidx.compose.material.SnackbarHost
import androidx.compose.material.SnackbarHostState
import androidx.compose.material3.Button
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.kuhakupixel.atg.backend.ACE
import com.kuhakupixel.atg.backend.ACE.MatchInfo
import com.kuhakupixel.atg.backend.ACE.NumType
import com.kuhakupixel.atg.backend.ACE.Operator
import com.kuhakupixel.atg.backend.ACE.operatorEnumToSymbolBiMap
import com.kuhakupixel.atg.backend.ACEBaseClient.InvalidCommandException
import com.kuhakupixel.atg.backend.ACEStatusSubscriber
import com.kuhakupixel.atg.backend.ScanProgressData
import com.kuhakupixel.atg.ui.GlobalConf
import com.kuhakupixel.atg.ui.util.CreateTable
import com.kuhakupixel.atg.ui.util.NumberInputField
import com.kuhakupixel.atg.ui.util.OverlayDropDown
import com.kuhakupixel.libuberalles.overlay.OverlayContext
import com.kuhakupixel.libuberalles.overlay.service.dialog.OverlayChoicesDialog
import com.kuhakupixel.libuberalles.overlay.service.dialog.OverlayInfoDialog
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch
import kotlin.concurrent.thread
import kotlin.math.min


// ======================= drop down options =================
private val scanTypeList: MutableList<String> = mutableListOf()
private val valueTypeList: MutableList<String> = mutableListOf()

// ==================== selected scan options ==============================
private var scanInputVal: MutableState<String> = mutableStateOf("")

private val scanTypeSelectedOptionIdx = mutableStateOf(0)
private val valueTypeSelectedOptionIdx = mutableStateOf(0)

// ================================================================
private val initialScanDone: MutableState<Boolean> = mutableStateOf(false)
val isScanOnGoing: MutableState<Boolean> = mutableStateOf(false)

private val valueTypeEnabled: MutableState<Boolean> = mutableStateOf(false)
private val scanTypeEnabled: MutableState<Boolean> = mutableStateOf(false)

// ===================================== current matches data =========================
private var currentMatchesList: MutableState<List<MatchInfo>> = mutableStateOf(mutableListOf())
private var matchesStatusText: MutableState<String> = mutableStateOf("0 matches")
private val scanProgress: MutableState<Float> = mutableStateOf(0.0f)

// ================================================================
@Composable
fun MemoryMenu(globalConf: GlobalConf?, overlayContext: OverlayContext?) {
    val snackbarHostState: SnackbarHostState = remember { SnackbarHostState() }
    val coroutineScope: CoroutineScope = rememberCoroutineScope()
    Scaffold(snackbarHost = { SnackbarHost(snackbarHostState) }) {
        _MemoryMenu(
            globalConf = globalConf,
            snackbarHostState = snackbarHostState,
            coroutineScope = coroutineScope,
            overlayContext = overlayContext,
        )
    }
}

@Composable
fun _MemoryMenu(
    globalConf: GlobalConf?,
    snackbarHostState: SnackbarHostState,
    coroutineScope: CoroutineScope,
    overlayContext: OverlayContext?
) {
    val ace: ACE = (globalConf?.getAce())!!
    // ==================================
    // initialize display for num types including its bit size
    if (valueTypeList.isEmpty()) {
        // init list
        for (numType: NumType in NumType.values()) {
            val displayStr: String = ace.GetNumTypeAndBitSize(numType)
            valueTypeList.add(displayStr)
        }
        // init default
        valueTypeSelectedOptionIdx.value = NumType.values().indexOf(ATGSettings.defaultNumType)
    }
    // initialize display for scan types
    if (scanTypeList.isEmpty()) {
        // init list
        for (op: Operator in Operator.values()) {
            val displayStr: String = (operatorEnumToSymbolBiMap.get(op))!!
            scanTypeList.add(displayStr)
        }
        // init default
        scanTypeSelectedOptionIdx.value = Operator.values().indexOf(ATGSettings.defaultScanType)
    }
    val isAttached: Boolean = ace.IsAttached()
    valueTypeEnabled.value = isAttached && !initialScanDone.value
    scanTypeEnabled.value = isAttached

    // =================================


    val content: @Composable (matchesTableModifier: Modifier, matchesSettingModifier: Modifier) -> Unit =
        { matchesTableModifier, matchesSettingModifier ->

            MatchesTable(
                modifier = matchesTableModifier,
                matches = currentMatchesList.value,
                matchesStatusText = matchesStatusText.value,
                scanProgress = scanProgress.value,
                onMatchClicked = { matchInfo: MatchInfo ->
                    //
                    val valueType: NumType = NumType.values()[valueTypeSelectedOptionIdx.value]
                    AddressTableAddAddress(matchInfo = matchInfo, numType = valueType)
                    //
                    coroutineScope.launch() {
                        snackbarHostState.showSnackbar(
                            message = "Added ${matchInfo.address} to Address Table",
                            duration = SnackbarDuration.Short,
                            actionLabel = "Ok"

                        )
                    }
                },
            )
            MatchesSetting(
                modifier = matchesSettingModifier,
                //
                scanTypeEnabled = scanTypeEnabled,
                scanTypeSelectedOptionIdx = scanTypeSelectedOptionIdx,
                //
                scanInputVal = scanInputVal,
                // only allow to change Value type before any scan is done
                valueTypeEnabled = valueTypeEnabled,
                valueTypeSelectedOptionIdx = valueTypeSelectedOptionIdx,
                //
                nextScanEnabled = isAttached && !isScanOnGoing.value,
                nextScanClicked = fun() {
                    thread {
                        // ====================== get scan options ========================
                        val valueType: NumType = NumType.values()[valueTypeSelectedOptionIdx.value]
                        val scanType: Operator = Operator.values()[scanTypeSelectedOptionIdx.value]
                        // ================================================================
                        // set the value type
                        if (!initialScanDone.value) ace.SetNumType(valueType)

                        // disable next and new scan
                        isScanOnGoing.value = true
                        try {
                            /**
                             * scan against a value if input value
                             * is not empty
                             * and scan without value otherwise
                             * (picking addresses whose value stayed the same, increased and etc)
                             * */

                            if (scanInputVal.value.isBlank()) {
                                ace.ScanWithoutValue(scanType)
                            } else {
                                ace.ScanAgainstValue(
                                    scanType,
                                    scanInputVal.value
                                )
                            }
                        } catch (e: InvalidCommandException) {
                            OverlayInfoDialog(overlayContext!!).show(
                                title = "Error",
                                text = e.stackTraceToString(),
                                onConfirm = {},
                            )
                        }
                        isScanOnGoing.value = false
                        // set initial scan to true
                        initialScanDone.value = true
                        // update matches table
                        UpdateMatches(ace = ace)
                    }
                    /**
                     * thread to update the progress as the scan goes, with a subscriber
                     * that keeps listening to a port until the scan is done
                     * */
                    thread {
                        val statusPublisherPort = ace.getStatusPublisherPort();
                        try {
                            val statusSubscriber = ACEStatusSubscriber(statusPublisherPort)
                            statusSubscriber.use { it: ACEStatusSubscriber ->

                                var scanProgressData: ScanProgressData =
                                    statusSubscriber.GetScanProgress()
                                while (!scanProgressData.is_finished) {
                                    scanProgress.value =
                                        scanProgressData.current.toFloat() / scanProgressData.max.toFloat()
                                    scanProgressData = statusSubscriber.GetScanProgress()
                                }
                            }

                        } catch (e: Exception) {
                            Log.e("ATG", "Error " + e.toString());

                        }

                    }

                },

                //
                newScanEnabled = isAttached && initialScanDone.value && !isScanOnGoing.value,
                newScanClicked = {
                    ace.ResetMatches()
                    UpdateMatches(ace = ace)
                    initialScanDone.value = false
                },
                overlayContext = overlayContext!!,
            )

        }


    // switch to column when portrait and row when landscape
    if (LocalConfiguration.current.orientation == Configuration.ORIENTATION_PORTRAIT) {
        Column(
            verticalArrangement = Arrangement.SpaceBetween,
            modifier = Modifier.fillMaxSize(),
        ) {
            content(
                matchesTableModifier = Modifier
                    .weight(0.6f)
                    .padding(16.dp),
                matchesSettingModifier = Modifier
                    .weight(0.4f)
                    .padding(10.dp),
            )
        }
    } else {
        Row(
            horizontalArrangement = Arrangement.SpaceBetween,
            modifier = Modifier.fillMaxSize(),
        ) {
            content(
                matchesTableModifier = Modifier
                    .weight(0.6f)
                    .padding(16.dp),
                matchesSettingModifier = Modifier
                    .weight(0.4f)
                    .fillMaxSize()
            )
        }
    }
}


@Composable
private fun MatchesTable(
    modifier: Modifier = Modifier,
    matches: List<MatchInfo>,
    matchesStatusText: String,
    scanProgress: Float,
    onMatchClicked: (matchInfo: MatchInfo) -> Unit,
) {

    Column(modifier = modifier, verticalArrangement = Arrangement.spacedBy(10.dp)) {
        Text(matchesStatusText)
        LinearProgressIndicator(progress = scanProgress)
        CreateTable(colNames = listOf("Address", "Previous Value"),
            colWeights = listOf(0.4f, 0.6f),
            itemCount = matches.size,
            minEmptyItemCount = 50,
            onRowClicked = { rowIndex: Int ->
                onMatchClicked(matches[rowIndex])
            },
            drawCell = { rowIndex: Int, colIndex: Int, cellModifier: Modifier ->
                if (colIndex == 0) {
                    Text(text = matches[rowIndex].address, modifier = cellModifier)
                }
                if (colIndex == 1) {
                    Text(text = matches[rowIndex].prevValue, modifier = cellModifier)
                }
            })
    }

}

private fun UpdateMatches(ace: ACE) {
    val matchesCount: Int = ace.GetMatchCount()
    val shownMatchesCount: Int = min(matchesCount, ATGSettings.maxShownMatchesCount)
    // update ui
    currentMatchesList.value = ace.ListMatches(ATGSettings.maxShownMatchesCount)
    matchesStatusText.value = "$matchesCount matches (showing ${shownMatchesCount})"


}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun MatchesSetting(
    modifier: Modifier = Modifier,
    //
    scanTypeEnabled: MutableState<Boolean>,
    scanTypeSelectedOptionIdx: MutableState<Int>,
    //
    scanInputVal: MutableState<String>,
    //
    valueTypeEnabled: MutableState<Boolean>,
    valueTypeSelectedOptionIdx: MutableState<Int>,
    //
    nextScanEnabled: Boolean,
    nextScanClicked: () -> Unit,
    //
    newScanEnabled: Boolean,
    newScanClicked: () -> Unit,
    overlayContext: OverlayContext,
) {
    @Composable
    fun ScanInputField(scanValue: MutableState<String>) {
        Row() {
            NumberInputField(
                modifier = Modifier.weight(0.65f),
                value = scanValue.value,
                onValueChange = { value ->
                    scanValue.value = value
                },
                label = "Scan For",
                placeholder = "value ...",
            )
        }
    }

    @Composable
    fun ScanButton(
        modifier: Modifier = Modifier,
        nextScanEnabled: Boolean,
        newScanEnabled: Boolean,
        onNextScan: () -> Unit,
        onNewScan: () -> Unit
    ) {
        Row(modifier = modifier, horizontalArrangement = Arrangement.SpaceEvenly) {
            Button(enabled = newScanEnabled, onClick = onNewScan) {
                Text("New Scan")
            }
            Button(enabled = nextScanEnabled, onClick = onNextScan) {
                Text("Next Scan")
            }
        }

    }

    @Composable
    fun ScanTypeDropDown(
        selectedOptionIndex: MutableState<Int>,
        enabled: MutableState<Boolean>,
        overlayContext: OverlayContext,
    ) {
        val expanded = remember { mutableStateOf(false) }
        // default to "exact scan (=)"
        OverlayDropDown(
            enabled = enabled,
            label = "Scan Type",
            expanded = expanded,
            options = scanTypeList,
            selectedOptionIndex = selectedOptionIndex.value,
            onShowOptions = fun(options: List<String>) {
                OverlayChoicesDialog(overlayContext!!).show(
                    title = "Value: ",
                    choices = options,
                    onConfirm = { index: Int, value: String ->
                        selectedOptionIndex.value = index
                    },
                    onClose = {
                        // after choice dialog is closed
                        // we should also set expanded to false
                        // so drop down will look closed
                        expanded.value = false

                    },
                    chosenIndex = selectedOptionIndex.value
                )
            }
        )
    }

    @Composable
    fun ValueTypeDropDown(
        selectedOptionIndex: MutableState<Int>,
        enabled: MutableState<Boolean>,
        overlayContext: OverlayContext,
    ) {
        val expanded = remember { mutableStateOf(false) }
        OverlayDropDown(
            enabled = enabled,
            label = "Value Type",
            expanded = expanded,
            options = valueTypeList,
            selectedOptionIndex = selectedOptionIndex.value,
            onShowOptions = fun(options: List<String>) {
                OverlayChoicesDialog(overlayContext!!).show(
                    title = "Value: ",
                    choices = options,
                    onConfirm = { index: Int, value: String ->
                        selectedOptionIndex.value = index
                    },
                    onClose = {
                        // after choice dialog is closed
                        // we should also set expanded to false
                        // so drop down will look closed
                        expanded.value = false

                    },
                    chosenIndex = selectedOptionIndex.value
                )
            }
        )
    }

    Column(modifier = modifier, verticalArrangement = Arrangement.SpaceBetween) {

        ScanInputField(scanValue = scanInputVal)
        ScanTypeDropDown(
            scanTypeSelectedOptionIdx,
            enabled = scanTypeEnabled,
            overlayContext = overlayContext,
        )
        ValueTypeDropDown(
            valueTypeSelectedOptionIdx,
            // only allow to change type during initial scan
            enabled = valueTypeEnabled,
            overlayContext = overlayContext,
        )
        ScanButton(
            modifier = Modifier.fillMaxWidth(),
            nextScanEnabled = nextScanEnabled,
            // new scan can only be done if we have done at least one scan
            newScanEnabled = newScanEnabled,
            //
            onNextScan = nextScanClicked,
            onNewScan = newScanClicked,
        )

    }
}

@Composable
@Preview
fun MemoryMenuPreview() {
    MemoryMenu(null, null)
}