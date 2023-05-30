package com.kuhakupixel.atg.ui.menu

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.snapshots.SnapshotStateList
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.kuhakupixel.atg.backend.ACE
import com.kuhakupixel.atg.backend.ACE.MatchInfo
import com.kuhakupixel.atg.backend.ACE.NumType
import com.kuhakupixel.atg.ui.GlobalConf
import com.kuhakupixel.atg.ui.overlay.service.OverlayManager
import com.kuhakupixel.atg.ui.util.CreateTable

class AddressInfo(val matchInfo: MatchInfo, val numType: NumType) {
}

private val savedAddresList = SnapshotStateList<AddressInfo>()

fun AddressTableAddAddress(matchInfo: MatchInfo, numType: NumType) {
    savedAddresList.add(AddressInfo(matchInfo, numType))
}

@Composable
fun AddressTableMenu(globalConf: GlobalConf?, overlayManager: OverlayManager?) {

    val ace: ACE = globalConf!!.getAce()
    Column(
        verticalArrangement = Arrangement.SpaceBetween,
        modifier = Modifier
            .fillMaxSize(),
    ) {
        Text("Address Table", modifier = Modifier.weight(0.2f))
        SavedAddressesTable(
            modifier = Modifier
                .weight(0.8f)
                .padding(16.dp),
            savedAddressList = savedAddresList,
            ace = ace,
            onAddressClicked = { address: String ->
                overlayManager!!.InputDialog(
                    title = "Edit value of $address",
                    onConfirm = { input: String ->

                        ace.WriteValueAtAddress(address, input)
                    }
                )
            }
        )
    }
}

@Composable
fun SavedAddressesTable(
    modifier: Modifier = Modifier,
    savedAddressList: SnapshotStateList<AddressInfo>,
    ace: ACE,
    onAddressClicked: (address: String) -> Unit
) {

    CreateTable(
        modifier = modifier,
        colNames = listOf("Address", "Value Type", "Value"),
        colWeights = listOf(0.3f, 0.3f, 0.3f),
        itemCount = savedAddressList.size,
        minEmptyItemCount = 50,
        onRowClicked = { rowIndex: Int ->
            onAddressClicked(savedAddressList[rowIndex].matchInfo.address)
        },
        drawCell = { rowIndex: Int, colIndex: Int, cellModifier: Modifier ->
            if (colIndex == 0) {
                Text(text = savedAddressList[rowIndex].matchInfo.address, modifier = cellModifier)
            }
            if (colIndex == 1) {
                val typeDesc: String = ace.GetNumTypeAndBitSize(savedAddressList[rowIndex].numType)
                Text(text = typeDesc, modifier = cellModifier)
            }
            if (colIndex == 2) {
                Text(text = savedAddressList[rowIndex].matchInfo.prevValue, modifier = cellModifier)
            }
        }
    )


}

@Composable
@Preview
fun AddressTablePreview() {
    AddressTableMenu(null, null)
}