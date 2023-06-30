package com.kuhakupixel.atg.ui.menu

import android.content.res.Configuration
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
import com.kuhakupixel.atg.ui.GlobalConf
import com.kuhakupixel.atg.ui.overlay.OverlayManager
import com.kuhakupixel.atg.ui.util.CreateTable
import com.kuhakupixel.atg.ui.util.NumberInputField
import com.kuhakupixel.atg.ui.util.OverlayDropDown
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch
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
val scanTypeEnabled: MutableState<Boolean> = mutableStateOf(false)
val valueTypeEnabled: MutableState<Boolean> = mutableStateOf(false)

// ===================================== current matches data =========================
private var currentMatchesList: MutableState<List<MatchInfo>> = mutableStateOf(mutableListOf())
private var matchesStatusText: MutableState<String> = mutableStateOf("0 matches")

@Composable
fun MemoryMenu(globalConf: GlobalConf?, overlayManager: OverlayManager?) {
    val snackbarHostState: SnackbarHostState = remember { SnackbarHostState() }
    val coroutineScope: CoroutineScope = rememberCoroutineScope()
    Scaffold(snackbarHost = { SnackbarHost(snackbarHostState) }) {
        _MemoryMenu(
            globalConf = globalConf,
            snackbarHostState = snackbarHostState,
            coroutineScope = coroutineScope,
            overlayManager = overlayManager,
        )
    }
}

@Composable
fun _MemoryMenu(
    globalConf: GlobalConf?,
    snackbarHostState: SnackbarHostState,
    coroutineScope: CoroutineScope,
    overlayManager: OverlayManager?
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
    val isAttached: Boolean = ace!!.IsAttached()

    // =================================

    scanTypeEnabled.value = isAttached
    // only enable change value type at first scan
    valueTypeEnabled.value = isAttached && !(initialScanDone.value)

    val content: @Composable (matchesTableModifier: Modifier, matchesSettingModifier: Modifier) -> Unit =
        { matchesTableModifier, matchesSettingModifier ->

            MatchesTable(
                modifier = matchesTableModifier,
                matches = currentMatchesList,
                matchesStatusText = matchesStatusText,
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
                nextScanEnabled = isAttached,
                nextScanClicked = fun() {
                    // ====================== get scan options ========================
                    val valueType: NumType = NumType.values()[valueTypeSelectedOptionIdx.value]
                    val scanType: Operator = Operator.values()[scanTypeSelectedOptionIdx.value]
                    // ================================================================
                    // set the value type
                    if (!initialScanDone.value) ace.SetNumType(valueType)
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
                        overlayManager!!.getInfoDialog().show(
                            title = "Error",
                            text = e.stackTraceToString(),
                            onConfirm = {},
                        )
                        return
                    }

                    // update matches table
                    UpdateMatches(ace = ace)
                    // set initial scan to true
                    initialScanDone.value = true
                },
                //
                newScanEnabled = isAttached && initialScanDone.value,
                newScanClicked = {
                    ace.ResetMatches()
                    UpdateMatches(ace = ace)
                    initialScanDone.value = false
                },
                overlayManager = overlayManager!!,
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
    matches: MutableState<List<MatchInfo>>,
    matchesStatusText: MutableState<String>,
    onMatchClicked: (matchInfo: MatchInfo) -> Unit,
) {

    Column(modifier = modifier) {
        Text(matchesStatusText.value)
        Spacer(modifier = Modifier.height(10.dp))
        CreateTable(colNames = listOf("Address", "Previous Value"),
            colWeights = listOf(0.4f, 0.6f),
            itemCount = matches.value.size,
            minEmptyItemCount = 50,
            onRowClicked = { rowIndex: Int ->
                onMatchClicked(matches.value[rowIndex])
            },
            drawCell = { rowIndex: Int, colIndex: Int, cellModifier: Modifier ->
                if (colIndex == 0) {
                    Text(text = matches.value[rowIndex].address, modifier = cellModifier)
                }
                if (colIndex == 1) {
                    Text(text = matches.value[rowIndex].prevValue, modifier = cellModifier)
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
    overlayManager: OverlayManager,
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
        overlayManager: OverlayManager,
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
                overlayManager.getChoicesDialog().show(
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
        overlayManager: OverlayManager,
    ) {
        val expanded = remember { mutableStateOf(false) }
        OverlayDropDown(
            enabled = enabled,
            label = "Value Type",
            expanded = expanded,
            options = valueTypeList,
            selectedOptionIndex = selectedOptionIndex.value,
            onShowOptions = fun(options: List<String>) {
                overlayManager.getChoicesDialog().show(
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
            overlayManager = overlayManager,
        )
        ValueTypeDropDown(
            valueTypeSelectedOptionIdx,
            // only allow to change type during initial scan
            enabled = valueTypeEnabled,
            overlayManager = overlayManager,
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