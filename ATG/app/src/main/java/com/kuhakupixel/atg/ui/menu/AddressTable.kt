package com.kuhakupixel.atg.ui.menu

import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.Preview
import com.kuhakupixel.atg.backend.ACE
import com.kuhakupixel.atg.backend.ACE.Operator
import com.kuhakupixel.atg.ui.GlobalConf

@Composable
fun AddressTable(globalConf: GlobalConf?) {
    Box(
        modifier = Modifier
            .fillMaxSize(),
        contentAlignment = Alignment.Center
    ) {
        Text(
            text = "Address Table",
            fontWeight = FontWeight.Bold,
        )
    }
}

@Composable
@Preview
fun AddressTablePreview() {
    AddressTable(null)
}