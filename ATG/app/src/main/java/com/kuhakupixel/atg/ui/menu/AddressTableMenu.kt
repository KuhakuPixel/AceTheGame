package com.kuhakupixel.atg.ui.menu

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.material3.Checkbox
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.LocalMinimumInteractiveComponentEnforcement
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.snapshots.SnapshotStateList
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.kuhakupixel.atg.backend.ACE
import com.kuhakupixel.atg.backend.ACE.MatchInfo
import com.kuhakupixel.atg.backend.ACE.NumType
import com.kuhakupixel.atg.backend.ACEBaseClient
import com.kuhakupixel.atg.ui.EditAddressOverlayDialog
import com.kuhakupixel.atg.ui.GlobalConf
import com.kuhakupixel.atg.ui.util.CreateTable
import com.kuhakupixel.libuberalles.overlay.OverlayContext
import com.kuhakupixel.libuberalles.overlay.service.dialog.OverlayInfoDialog

class AddressInfo(val matchInfo: MatchInfo, val numType: NumType) {
}

private val savedAddresList = SnapshotStateList<AddressInfo>()

fun AddressTableAddAddress(matchInfo: MatchInfo, numType: NumType) {
    savedAddresList.add(AddressInfo(matchInfo, numType))
}

@Composable
fun AddressTableMenu(globalConf: GlobalConf?, overlayContext: OverlayContext?) {

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
            onAddressClicked = { numType: NumType, address: String ->
                EditAddressOverlayDialog(overlayContext!!).show(
                    title = "Edit value of $address",
                    onConfirm = { input: String, isFreezed: Boolean ->
                        try {
                            ace.WriteValueAtAddress(numType, address, input)
                        } catch (e: ACEBaseClient.InvalidCommandException) {
                            OverlayInfoDialog(overlayContext!!).show(
                                title = "Error",
                                text = e.stackTraceToString(),
                                onConfirm = {},
                            )
                        }
                    }
                )
            }
        )
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SavedAddressesTable(
    modifier: Modifier = Modifier,
    savedAddressList: SnapshotStateList<AddressInfo>,
    ace: ACE,
    onAddressClicked: (numType: NumType, address: String) -> Unit
) {

    CreateTable(
        modifier = modifier,
        colNames = listOf("Freeze", "Address", "Type", "Value"),
        colWeights = listOf(0.2f, 0.3f, 0.2f, 0.3f),
        itemCount = savedAddressList.size,
        minEmptyItemCount = 50,
        onRowClicked = { rowIndex: Int ->
        },
        rowMinHeight = 25.dp,
        drawCell = { rowIndex: Int, colIndex: Int ->
            val freezeChecked = remember { mutableStateOf(false) }
            if (colIndex == 0) {
                // remove default padding  in Checkbox
                // https://stackoverflow.com/questions/71609051/remove-default-padding-around-checkboxes-in-jetpack-compose-new-update
                // https://stackoverflow.com/questions/73620652/jetpack-compose-internal-padding
                CompositionLocalProvider(LocalMinimumInteractiveComponentEnforcement provides false) {
                    Checkbox(
                        freezeChecked.value,
                        onCheckedChange = { checked: Boolean ->
                            freezeChecked.value = checked
                            if (checked) {
                                ace.FreezeValueAtAddress(
                                    savedAddressList[rowIndex].numType,
                                    savedAddressList[rowIndex].matchInfo.address
                                )
                            } else {
                                ace.UnFreezeValueAtAddress(
                                    savedAddressList[rowIndex].numType,
                                    savedAddressList[rowIndex].matchInfo.address
                                )
                            }

                        },
                    )
                }
            }
            // address
            if (colIndex == 1) {
                Text(text = savedAddressList[rowIndex].matchInfo.address)
            }
            // num type
            if (colIndex == 2) {
                val typeDesc: String = ace.GetNumTypeAndBitSize(savedAddressList[rowIndex].numType)
                Text(text = typeDesc)
            }
            // value
            if (colIndex == 3) {
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .clickable {
                            onAddressClicked(
                                savedAddressList[rowIndex].numType,
                                savedAddressList[rowIndex].matchInfo.address
                            )

                        },
                ) {
                    Text(
                        text = savedAddressList[rowIndex].matchInfo.prevValue,
                    )
                }
            }
        }
    )


}

@Composable
@Preview
fun AddressTablePreview() {
    AddressTableMenu(null, null)
}