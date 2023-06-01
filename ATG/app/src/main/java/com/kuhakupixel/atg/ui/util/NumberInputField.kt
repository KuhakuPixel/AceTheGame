package com.kuhakupixel.atg.ui.util

import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material3.Text
import androidx.compose.material3.TextField
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.input.KeyboardType


@Composable
fun NumberInputField(
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    value: String,
    label: String = "",
    placeholder: String = "",
    onValueChange: (String) -> Unit,
) {

    TextField(
        modifier = modifier,
        enabled = enabled,
        value = value,
        onValueChange = { value ->
            // make sure we don't pass in value with \n
            // because of enter, because that will cause the caller
            // parsing problem
            onValueChange(value.replace("\n", ""))
        },
        label = { Text(text = label) },
        placeholder = { Text(text = placeholder) },
        keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
        singleLine = true,
    )
}