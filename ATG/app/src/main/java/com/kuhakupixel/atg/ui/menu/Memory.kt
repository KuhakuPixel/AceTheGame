package com.kuhakupixel.atg.ui.menu

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.kuhakupixel.atg.ui.GlobalConf
import com.kuhakupixel.atg.ui.util.CreateTable

@Composable
fun MemoryMenu(globalConf: GlobalConf?) {
    Column(
        verticalArrangement = Arrangement.SpaceBetween,
        modifier = Modifier
            .fillMaxSize(),
    ) {
        MatchesTable(
            modifier = Modifier
                .weight(0.6f)
                .padding(16.dp),
        )
        MatchesSetting(modifier = Modifier.weight(0.4f))
    }
}

@Composable
private fun MatchesSetting(modifier: Modifier = Modifier) {
    Column(modifier = modifier) {
        Text("Memory")
    }
}

@Composable
private fun MatchesTable(modifier: Modifier = Modifier) {

    CreateTable(
        modifier = modifier,
        colNames = listOf("Address", "Previous Value"),
        colWeights = listOf(0.4f, 0.6f),
        itemCount = 0,
        minEmptyItemCount = 50,
        onRowClicked = { rowIndex: Int ->

        },
        drawCell = { rowIndex: Int, colIndex: Int, cellModifier: Modifier ->
            /*
            if (colIndex == 0) {
                Text(text = processList[rowIndex].GetPidStr(), modifier = cellModifier)
            }
            if (colIndex == 1) {
                Text(text = processList[rowIndex].GetName(), modifier = cellModifier)
            }
             */
        }
    )
}

@Composable
@Preview
fun MemoryMenuPreview() {
    MemoryMenu(null)
}