package com.java.atg.menu

import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import com.java.atg.GlobalConf

@Composable
fun MemoryMenu(globalConf: GlobalConf?) {
    Box(
        modifier = Modifier
            .fillMaxSize(),
        contentAlignment = Alignment.Center
    ) {
        Column {
            Text("Memory")

        }
    }
}


@Composable
@Preview
fun MemoryMenuPreview() {
    MemoryMenu(null)
}