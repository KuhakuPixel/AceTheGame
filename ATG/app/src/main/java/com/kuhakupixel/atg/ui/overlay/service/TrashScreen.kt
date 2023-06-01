package com.kuhakupixel.atg.ui.overlay.service

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.layout.onGloballyPositioned
import com.kuhakupixel.atg.ui.overlay.composables.Trash

@Composable
fun TrashContentScreen(showOverlayButton: Boolean, serviceState: ServiceState) {

    Box(Modifier.onGloballyPositioned {
        serviceState.screenWidthPx = it.size.width
        serviceState.screenHeightPx = it.size.height
    }) {
        // future.txt correct z-order
        if (showOverlayButton) {
            ShowTrash(serviceState = serviceState)
        }
    }
}

@Composable
fun ShowTrash(serviceState: ServiceState) {
    val overlayState = serviceState.overlayButtonState
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


