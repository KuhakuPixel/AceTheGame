package com.kuhakupixel.atg.ui.util

import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.ExposedDropdownMenuBox
import androidx.compose.material3.ExposedDropdownMenuDefaults
import androidx.compose.material3.Text
import androidx.compose.material3.TextField
import androidx.compose.runtime.Composable
import androidx.compose.runtime.MutableState
import androidx.compose.ui.Modifier

/**
 *  custom dropdown that can be enabled or disabled
 *  which when disabled will not allow the dropdown to expand
 *  and disable the arrow icon
 *  https://stackoverflow.com/a/74534475/14073678
 *  https://developer.android.com/reference/kotlin/androidx/compose/material3/package-summary#ExposedDropdownMenuBox(kotlin.Boolean,kotlin.Function1,androidx.compose.ui.Modifier,kotlin.Function1)
 * */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ATGDropDown(
    label: String,
    expanded: MutableState<Boolean>,
    options: List<String>,
    selectedOptionIndex: MutableState<Int>,
    enabled: MutableState<Boolean>,
) {

    ExposedDropdownMenuBox(
        expanded = expanded.value,
        onExpandedChange = {
            if (enabled.value) {
                expanded.value = !expanded.value
            }
        },
    ) {
        TextField(
            enabled = enabled.value,
            // The `menuAnchor` modifier must be passed to the text field for correctness.
            modifier = Modifier.menuAnchor(),
            readOnly = true,
            value = options[selectedOptionIndex.value],
            onValueChange = {},
            label = { Text(label) },
            trailingIcon = {
                if (enabled.value) {
                    ExposedDropdownMenuDefaults.TrailingIcon(expanded = expanded.value)
                }
            },
            colors = ExposedDropdownMenuDefaults.textFieldColors(),
        )
        ExposedDropdownMenu(
            expanded = expanded.value,
            onDismissRequest = { expanded.value = false },
        ) {
            // populate item
            for (i in options.indices) {
                DropdownMenuItem(
                    text = { Text(options[i]) },
                    onClick = {
                        selectedOptionIndex.value = i
                        expanded.value = false
                    },
                    contentPadding = ExposedDropdownMenuDefaults.ItemContentPadding,
                )
            }
        }
    }
}

/**
 * Dropdown specifically made for overlay window
 * because I just found out that Jetpack compose Dropdown
 * doesn't work (not showing the choices) in overlay window
 *
 * A workaround is to show the choices in another overlay window
 * doesn't seem pretty but it works :D
 * */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun OverlayDropDown(
    label: String,
    expanded: MutableState<Boolean>,
    options: List<String>,
    selectedOptionIndex: Int,
    enabled: MutableState<Boolean>,
    onShowOptions: (options: List<String>) -> Unit,
) {

    ExposedDropdownMenuBox(
        expanded = expanded.value,
        onExpandedChange = {
            if (enabled.value) {
                expanded.value = !expanded.value
                if (expanded.value) {
                    onShowOptions(options)
                    //
                }
            }
        },
    ) {
        TextField(
            enabled = enabled.value,
            // The `menuAnchor` modifier must be passed to the text field for correctness.
            modifier = Modifier.menuAnchor(),
            readOnly = true,
            value = options[selectedOptionIndex],
            onValueChange = {},
            label = { Text(label) },
            trailingIcon = {
                if (enabled.value) {
                    ExposedDropdownMenuDefaults.TrailingIcon(expanded = expanded.value)
                }
            },
            colors = ExposedDropdownMenuDefaults.textFieldColors(),
        )
    }
}
