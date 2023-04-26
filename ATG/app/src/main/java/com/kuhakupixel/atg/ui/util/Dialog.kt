package com.kuhakupixel.atg.ui.util

import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier


/**
 * [onClose]: Called when dialog is dismissed or confirmed
 * [onConfirm]: Called when confirmed
 * */
@Composable
fun _ShowDialog(
    title: String,
    msg: String,
    onClose: () -> Unit,
    onConfirm: () -> Unit,
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
            Text(
                msg,
                modifier = Modifier
                    .verticalScroll(rememberScrollState())
                    .horizontalScroll(rememberScrollState()),
            )
        },
        confirmButton = {
            Button(
                onClick = {
                    onConfirm()
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
fun InfoDialog(msg: String, onClose: () -> Unit, onConfirm: () -> Unit) {
    _ShowDialog(title = "Info", msg = msg, onClose = onClose, onConfirm = onConfirm)
}

@Composable
fun WarningDialog(msg: String, onClose: () -> Unit, onConfirm: () -> Unit) {
    _ShowDialog(title = "Warning", msg = msg, onClose = onClose, onConfirm = onConfirm)
}

@Composable
fun ErrorDialog(msg: String, onClose: () -> Unit, onConfirm: () -> Unit) {
    _ShowDialog(title = "Error", msg = msg, onClose = onClose, onConfirm = onConfirm)
}

@Composable
fun ConfirmDialog(
    title: String = "Confirmation",
    msg: String,
    onClose: () -> Unit,
    onConfirm: () -> Unit,
) {
    _ShowDialog(
        title = title,
        msg = msg,
        onClose = onClose,
        onConfirm = onConfirm,
        showCancelButton = true,
    )
}
