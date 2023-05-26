package com.kuhakupixel.atg.ui.overlay.service

import androidx.compose.foundation.layout.Box
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.layout.onGloballyPositioned

@Composable
fun OverlayContent(showOverlayButton: Boolean) {
    val state = LocalServiceState.current

    Box(Modifier.onGloballyPositioned {
        state.screenWidthPx = it.size.width
        state.screenHeightPx = it.size.height
    }) {
        // future.txt correct z-order
        if (showOverlayButton) {
            CreateOverlayButton()
        }
    }
}