package com.kuhakupixel.atg.ui

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.Button
import androidx.compose.material3.Checkbox
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.Modifier
import com.kuhakupixel.atg.ui.util.NumberInputField
import com.kuhakupixel.libuberalles.overlay.OverlayContext
import com.kuhakupixel.libuberalles.overlay.service.dialog.OverlayDialog

class AddressOverlayDialog(
    overlayContext: OverlayContext,
    alpha: Float = 1.0f,
    val onAddressDeleted: () -> Unit
) :
    OverlayDialog(overlayContext, alpha = alpha) {
    @Composable
    override fun DialogBody() {
        Row(
            modifier = Modifier.fillMaxSize(),
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            Button(onClick = onAddressDeleted) {
                Text("Delete address")
            }
        }

    }

    fun show(title: String, onConfirm: () -> Unit) {
        super.show(
            title = title,
            onConfirm = onConfirm,
            onClose = {}
        )
    }

}
