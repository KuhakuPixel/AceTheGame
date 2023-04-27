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
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.kuhakupixel.atg.backend.ACE.MatchInfo
import com.kuhakupixel.atg.backend.ACE.NumType
import com.kuhakupixel.atg.ui.GlobalConf
import com.kuhakupixel.atg.ui.util.CreateTable

class AddressInfo(matchInfo: MatchInfo, numType: NumType) {

}

@Composable
fun AddressTableMenu(globalConf: GlobalConf?) {

    Column(
        verticalArrangement = Arrangement.SpaceBetween,
        modifier = Modifier
            .fillMaxSize(),
    ) {
        Text("Address Table", modifier = Modifier.weight(0.2f))
        SavedAddressesTable(modifier = Modifier
            .weight(0.8f)
            .padding(16.dp)
        )

    }
}

@Composable
fun SavedAddressesTable(
    modifier: Modifier = Modifier,
) {
    CreateTable(
        modifier = modifier,
        colNames = listOf("Address", "Value"),
        colWeights = listOf(0.4f, 0.6f),
        itemCount = 0,
        minEmptyItemCount = 50,
        onRowClicked = { rowIndex: Int ->

        },
        drawCell = { rowIndex: Int, colIndex: Int, cellModifier: Modifier ->
            /*
            if (colIndex == 0) {
                Text(text = matches.value[rowIndex].address, modifier = cellModifier)
            }
            if (colIndex == 1) {
                Text(text = matches.value[rowIndex].prevValue, modifier = cellModifier)
            }
             */
        }
    )

}

@Composable
@Preview
fun AddressTablePreview() {
    AddressTableMenu(null)
}