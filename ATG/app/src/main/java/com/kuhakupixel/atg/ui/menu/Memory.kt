package com.kuhakupixel.atg.ui.menu

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.material3.TextField
import androidx.compose.runtime.Composable
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.kuhakupixel.atg.backend.ACE
import com.kuhakupixel.atg.backend.ACE.MatchInfo
import com.kuhakupixel.atg.backend.ACE.NumType
import com.kuhakupixel.atg.backend.ACE.operatorEnumToSymbolBiMap
import com.kuhakupixel.atg.ui.GlobalConf
import com.kuhakupixel.atg.ui.util.ATGDropDown
import com.kuhakupixel.atg.ui.util.CheckboxWithText
import com.kuhakupixel.atg.ui.util.CreateTable


private val scanTypeList: List<String> = ArrayList<String>(operatorEnumToSymbolBiMap.values)
private val valueTypeList: MutableList<String> = mutableListOf()

// ==================== selected scan options ==============================
private var scanInputVal: MutableState<String> = mutableStateOf("")
private var scanAgainstValue: MutableState<Boolean> = mutableStateOf(true)

private val scanTypeSelectedOptionIdx = mutableStateOf(scanTypeList.indexOf("="))
private val valueTypeSelectedOptionIdx = mutableStateOf(0)

// ================================================================
private val initialScanDone: MutableState<Boolean> = mutableStateOf(false)
private var currentMatchesList: MutableState<List<MatchInfo>> = mutableStateOf(mutableListOf())

@Composable
fun MemoryMenu(globalConf: GlobalConf?) {
    val ace: ACE? = globalConf?.getAce()
    // ==================================
    // initialize display for num types including its bit size
    if (valueTypeList.isEmpty()) {
        for (numType: NumType in NumType.values()) {
            val bitSize: Int = ace!!.GetNumTypeBitSize(numType)
            val displayStr: String = "${numType.toString()} (${bitSize} bit)"
            valueTypeList.add(displayStr)

        }
    }
    // ==================================
    Column(
        verticalArrangement = Arrangement.SpaceBetween,
        modifier = Modifier
            .fillMaxSize(),
    ) {
        MatchesTable(
            modifier = Modifier
                .weight(0.5f)
                .padding(16.dp),
            matches = currentMatchesList,
        )
        MatchesSetting(
            modifier = Modifier
                .weight(0.5f)
                .padding(10.dp)
                .fillMaxSize(),
            ace = ace!!,
            matches = currentMatchesList

        )
    }
}

@Composable
private fun MatchesSetting(
    ace: ACE,
    modifier: Modifier = Modifier,
    matches: MutableState<List<MatchInfo>>
) {
    @Composable
    fun ScanInputField(scanValue: MutableState<String>, scanAgainstValue: MutableState<Boolean>) {
        Row() {
            CheckboxWithText(
                modifier = Modifier.weight(0.45f),
                checked = scanAgainstValue.value,
                onCheckedChange = { value ->
                    scanAgainstValue.value = value
                },
                text = "Against value",
            )
            TextField(
                modifier = Modifier.weight(0.65f),
                enabled = scanAgainstValue.value,
                value = scanValue.value,
                onValueChange = { value ->
                    scanValue.value = value
                },
                label = { Text(text = "Scan For") },
                placeholder = { Text(text = "value ...") },
                keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
                singleLine = true,
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
    fun ScanTypeDropDown(selectedOptionIndex: MutableState<Int>, enabled: Boolean) {
        val expanded = remember { mutableStateOf(false) }
        // default to "exact scan (=)"
        ATGDropDown(
            enabled = enabled,
            label = "Scan Type",
            expanded = expanded,
            options = scanTypeList,
            selectedOptionIndex = selectedOptionIndex,
        )
    }

    @Composable
    fun ValueTypeDropDown(selectedOptionIndex: MutableState<Int>, enabled: Boolean) {
        val expanded = remember { mutableStateOf(false) }
        ATGDropDown(
            enabled = enabled,
            label = "Value Type",
            expanded = expanded,
            options = valueTypeList,
            selectedOptionIndex = selectedOptionIndex,
        )
    }

    val isAttached: Boolean = ace.IsAttached()
    Column(modifier = modifier, verticalArrangement = Arrangement.SpaceBetween) {
        ScanTypeDropDown(scanTypeSelectedOptionIdx, enabled = isAttached)
        ValueTypeDropDown(
            valueTypeSelectedOptionIdx,
            // only allow to change type during initial scan
            enabled = isAttached && !(initialScanDone.value),
        )
        ScanInputField(scanValue = scanInputVal, scanAgainstValue = scanAgainstValue)
        ScanButton(
            modifier = Modifier.fillMaxWidth(),
            nextScanEnabled = isAttached,
            // new scan can only be done if we have done at least one scan
            newScanEnabled = isAttached && initialScanDone.value,
            //
            onNextScan = {
                // ====================== get scan options ========================
                val valueType: NumType = NumType.values()[valueTypeSelectedOptionIdx.value]

                val scanTypeStr: String = scanTypeList[scanTypeSelectedOptionIdx.value]
                val scanType: ACE.Operator =
                    (operatorEnumToSymbolBiMap.inverse().get(scanTypeStr))!!
                // ================================================================
                // set the value type
                if (!initialScanDone.value)
                    ace.SetNumType(valueType)
                // do the scan
                if (scanAgainstValue.value)
                    ace.ScanAgainstValue(scanType, scanInputVal.value)
                else
                    ace.ScanWithoutValue(scanType)


                // update matches table
                matches.value = ace.ListMatches(1000)
                // set initial scan to true
                initialScanDone.value = true
            },
            onNewScan = {

                initialScanDone.value = false
            },
        )

    }
}

@Composable
private fun MatchesTable(modifier: Modifier = Modifier, matches: MutableState<List<MatchInfo>>) {

    CreateTable(
        modifier = modifier,
        colNames = listOf("Address", "Previous Value"),
        colWeights = listOf(0.4f, 0.6f),
        itemCount = matches.value.size,
        minEmptyItemCount = 50,
        onRowClicked = { rowIndex: Int ->

        },
        drawCell = { rowIndex: Int, colIndex: Int, cellModifier: Modifier ->
            if (colIndex == 0) {
                Text(text = matches.value[rowIndex].address, modifier = cellModifier)
            }
            if (colIndex == 1) {
                Text(text = matches.value[rowIndex].prevValue, modifier = cellModifier)
            }
        }
    )
}

@Composable
@Preview
fun MemoryMenuPreview() {
    MemoryMenu(null)
}