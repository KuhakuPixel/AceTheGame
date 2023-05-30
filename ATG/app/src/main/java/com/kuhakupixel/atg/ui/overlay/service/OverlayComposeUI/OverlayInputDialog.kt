package com.kuhakupixel.atg.ui.overlay.service.OverlayComposeUI

import android.view.WindowManager
import androidx.compose.runtime.Composable
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf
import com.kuhakupixel.atg.ui.overlay.OverlayViewHolder
import com.kuhakupixel.atg.ui.util.NumberInputField

class OverlayInputDialog(
    createDialogOverlay: (
        content: @Composable () -> Unit,
    ) -> OverlayViewHolder, windowManager: WindowManager
) : OverlayDialog(
    createDialogOverlay = createDialogOverlay, windowManager = windowManager,
) {
    private val valueInput: MutableState<String> = mutableStateOf("")

    init {
        InitDialogBody {
            NumberInputField(
                value = valueInput.value,
                onValueChange = { value ->
                    valueInput.value = value
                },
                label = "Value Input ...",
                placeholder = "value ...",
            )
        }
    }

    fun show(title: String, onConfirm: (input: String) -> Unit) {
        super.show(
            title = title,
            onConfirm = {
                onConfirm(valueInput.value)
            },
        )
    }


}