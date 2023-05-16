package com.kuhakupixel.atg.ui.overlaybutton.service

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.size
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.kuhakupixel.atg.ui.overlaybutton.OVERLAY_BUTTON_SIZE_DP
import com.kuhakupixel.atg.ui.overlaybutton.composables.Trash

@Composable
fun CreateOverlayButton() {
    val serviceState = LocalServiceState.current
    val overlayState = serviceState.overlayButtonState

    Button(
        modifier = Modifier
            .offset {
                overlayState.timerOffset
            }
            .size(OVERLAY_BUTTON_SIZE_DP.dp),
        //.padding(PROGRESS_ARC_WIDTH / 2),
        onClick = {},
    ) {
        Text("ATG")

    }

    if (overlayState.showTrash) {
        Column(
            Modifier.fillMaxSize(),
            verticalArrangement = Arrangement.Bottom,
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Trash(overlayState)
        }
    }
}


