package com.java.atg.ui.dialogUtil

import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember


/**
 * [onClose]: Called when dialog is dismissed or confirmed
 * [onClick]: Called when confirmed
 * */
@Composable
fun _ShowDialog(
    title: String,
    msg: String,
    onClose: () -> Unit,
    onClick: () -> Unit,
    showCancelButton: Boolean = false
) {
    AlertDialog(
        onDismissRequest = {
            onClose()
        },
        title = {
            Text(title)
        },
        text = {
            Text(msg)
        },
        confirmButton = {
            Button(
                onClick = {
                    onClick()
                    onClose()
                }

            ) { Text("Ok") }
        },
        dismissButton = {
            if (showCancelButton) {
                Button(
                    onClick = {
                        onClose()
                    }
                ) { Text("Cancel") }
            }
        },
    )

}

@Composable
fun InfoDialog(msg: String, onClose: () -> Unit, onClick: () -> Unit) {
    _ShowDialog(title = "Info", msg = msg, onClose = onClose, onClick = onClick)
}

@Composable
fun WarningDialog(msg: String, onClose: () -> Unit, onClick: () -> Unit) {
    _ShowDialog(title = "Warning", msg = msg, onClose = onClose, onClick = onClick)
}

@Composable
fun ConfirmDialog(
    title: String = "Confirmation",
    msg: String,
    onClose: () -> Unit,
    onClick: () -> Unit,
) {
    _ShowDialog(
        title = title,
        msg = msg,
        onClose = onClose,
        onClick = onClick,
        showCancelButton = true,
    )
}
