package com.kuhakupixel.atg.ui.util

import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.material3.TextField
import androidx.compose.runtime.Composable
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.input.KeyboardType

/**
 * [onClose]: Called when dialog is dismissed or confirmed
 * [onConfirm]: Called when confirmed
 * */
@Composable
fun ShowDialog(
    title: String,
    body: @Composable () -> Unit,
    onClose: () -> Unit,
    onConfirm: () -> Unit,
    showCancelButton: Boolean

) {

    AlertDialog(
        onDismissRequest = {
            onClose()
        },
        title = {
            Text(title)
        },
        text = body,
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
fun InputValueDialog(
    title: String,
    onClose: () -> Unit,
    onConfirm: (input: String) -> Unit,
    showCancelButton: Boolean = false
) {
    var valueInput: MutableState<String> = remember { mutableStateOf("") }
    ShowDialog(
        title = title,
        body = {
            TextField(
                value = valueInput.value,
                onValueChange = { value ->
                    valueInput.value = value
                },
                label = { Text(text = "Value Input ...") },
                placeholder = { Text(text = "value ...") },
                keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
                singleLine = true,
            )
        },
        onClose = onClose,
        onConfirm = { onConfirm(valueInput.value) },
        showCancelButton = showCancelButton,
    )
}

@Composable
fun ShowTextDialog(
    title: String,
    msg: String,
    onClose: () -> Unit,
    onConfirm: () -> Unit,
    showCancelButton: Boolean = false
) {

    ShowDialog(
        title = title,
        body = {
            Text(
                msg,
                modifier = Modifier
                    .verticalScroll(rememberScrollState())
                    .horizontalScroll(rememberScrollState()),
            )
        },
        onClose = onClose, onConfirm = onConfirm, showCancelButton = showCancelButton,
    )
}

@Composable
fun InfoDialog(msg: String, onClose: () -> Unit, onConfirm: () -> Unit) {
    ShowTextDialog(title = "Info", msg = msg, onClose = onClose, onConfirm = onConfirm)
}

@Composable
fun WarningDialog(msg: String, onClose: () -> Unit, onConfirm: () -> Unit) {
    ShowTextDialog(title = "Warning", msg = msg, onClose = onClose, onConfirm = onConfirm)
}

@Composable
fun ErrorDialog(msg: String, onClose: () -> Unit, onConfirm: () -> Unit) {
    ShowTextDialog(title = "Error", msg = msg, onClose = onClose, onConfirm = onConfirm)
}

@Composable
fun ConfirmDialog(
    title: String = "Confirmation",
    msg: String,
    onClose: () -> Unit,
    onConfirm: () -> Unit,
) {
    ShowTextDialog(
        title = title,
        msg = msg,
        onClose = onClose,
        onConfirm = onConfirm,
        showCancelButton = true,
    )
}
