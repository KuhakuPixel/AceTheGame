package com.kuhakupixel.atg.ui.menu

import android.graphics.drawable.Icon
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material.icons.outlined.Delete
import androidx.compose.material3.Button
import androidx.compose.material3.Checkbox
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.LocalMinimumInteractiveComponentEnforcement
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.snapshots.SnapshotStateList
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.kuhakupixel.atg.backend.ACE
import com.kuhakupixel.atg.backend.ACE.MatchInfo
import com.kuhakupixel.atg.backend.ACE.NumType
import com.kuhakupixel.atg.backend.ACEBaseClient
import com.kuhakupixel.atg.ui.AddressOverlayDialog
import com.kuhakupixel.atg.ui.EditAddressOverlayDialog
import com.kuhakupixel.atg.ui.GlobalConf
import com.kuhakupixel.atg.ui.util.CreateTable
import com.kuhakupixel.libuberalles.overlay.OverlayContext
import com.kuhakupixel.libuberalles.overlay.service.dialog.OverlayInfoDialog

class AddressInfo(
    val matchInfo: MatchInfo,
    val numType: NumType,
    val isFreezed: MutableState<Boolean> = mutableStateOf(false)
) {
}

private val savedAddresList = mutableStateListOf<AddressInfo>()
fun AddressTableAddAddress(matchInfo: MatchInfo, numType: NumType) {
    savedAddresList.add(AddressInfo(matchInfo, numType))
}

@Composable
fun AddressTableMenu(globalConf: GlobalConf?, overlayContext: OverlayContext?) {

    val ace: ACE = globalConf!!.getAce()
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp),
    ) {
        Column(
            modifier = Modifier.weight(0.2f)
        ) {
            Button(
                onClick = {
                    OverlayInfoDialog(overlayContext!!).show(
                        title = "Info Dialog",
                        text = "Delete all addresses?",
                        onConfirm = {
                            savedAddresList.clear()
                        },
                    )

                }) {

                Icon(Icons.Filled.Delete, "Delete All Matches")
            }
        }
        SavedAddressesTable(
            modifier = Modifier.weight(0.8f),
            savedAddressList = savedAddresList,
            ace = ace,
            onAddressClicked = { itemIndex: Int ->
                AddressOverlayDialog(
                    overlayContext = overlayContext!!,
                    onAddressDeleted = {
                        savedAddresList.removeAt(index = itemIndex)
                    }

                ).show(title = "Address ", onConfirm = {})

            },
            onValueClicked = { addressInfo: AddressInfo ->
                EditAddressOverlayDialog(overlayContext!!).show(
                    title = "Edit value of ${addressInfo.matchInfo.address}",
                    onConfirm = { newValue: String ->
                        try {
                            /* if value already frozen
                            * we need to first unfreeze it and then freeze the address
                            * with [newValue] instead of only writing to that value, because it
                            * will be pointless mimicking cheat engine's behaviour
                            *
                            * example when this is useful: if we have already frozen player's y coordinate,
                            * and we want to fly into higher/lower position
                            * */
                            if (addressInfo.isFreezed.value) {
                                ace.UnFreezeAtAddress(
                                    addressInfo.numType,
                                    addressInfo.matchInfo.address
                                )
                                ace.FreezeValueAtAddress(
                                    addressInfo.numType,
                                    addressInfo.matchInfo.address,
                                    newValue
                                )
                            } else {

                                ace.WriteValueAtAddress(
                                    addressInfo.numType,
                                    addressInfo.matchInfo.address,
                                    newValue
                                )
                            }
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
    onValueClicked: (addressInfo: AddressInfo) -> Unit,
    onAddressClicked: (itemIndex: Int) -> Unit
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
            if (colIndex == 0) {
                // remove default padding  in Checkbox
                // https://stackoverflow.com/questions/71609051/remove-default-padding-around-checkboxes-in-jetpack-compose-new-update
                // https://stackoverflow.com/questions/73620652/jetpack-compose-internal-padding
                CompositionLocalProvider(LocalMinimumInteractiveComponentEnforcement provides false) {
                    Checkbox(
                        savedAddressList[rowIndex].isFreezed.value,
                        onCheckedChange = { checked: Boolean ->
                            savedAddressList[rowIndex].isFreezed.value = checked
                            if (checked) {
                                ace.FreezeAtAddress(
                                    savedAddressList[rowIndex].numType,
                                    savedAddressList[rowIndex].matchInfo.address
                                )
                            } else {
                                ace.UnFreezeAtAddress(
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

                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .clickable {
                            onAddressClicked(rowIndex)
                        },
                ) {
                    Text(text = savedAddressList[rowIndex].matchInfo.address)
                }
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
                            onValueClicked(
                                savedAddressList[rowIndex]
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