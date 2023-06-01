package com.kuhakupixel.atg.ui.overlay.service.OverlayComposeUI

import android.graphics.PixelFormat
import android.view.WindowManager
import androidx.compose.runtime.Composable
import com.kuhakupixel.atg.ui.overlay.OverlayViewHolder
import com.kuhakupixel.atg.ui.overlay.service.FloatingService

class OverlayManager(
    private val windowManager: WindowManager,
    private val service: FloatingService
) {

    private fun createDialogOverlay(
        content: @Composable () -> Unit,
    ): OverlayViewHolder {

        val hackingScreen = OverlayViewHolder(
            windowManager = windowManager,
            params = WindowManager.LayoutParams(
                WindowManager.LayoutParams.MATCH_PARENT,
                WindowManager.LayoutParams.MATCH_PARENT,
                0,
                0,
                WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
                0,
                PixelFormat.TRANSLUCENT
            ),
            alpha = 0.9f,
            service = service,
        )

        hackingScreen.setContent {
            content()
        }

        return hackingScreen
    }

    private var overlayInputDialog = OverlayInputDialog(
        createDialogOverlay = ::createDialogOverlay,
        windowManager = windowManager
    )

    private var overlayInfoDialog = OverlayInfoDialog(
        createDialogOverlay = ::createDialogOverlay,
        windowManager = windowManager
    )

    // TODO: Fix This, Because its duplicate and ugly :(
    val overlayScanTypeDialog = OverlayChoicesDialog(
        createDialogOverlay = ::createDialogOverlay,
        windowManager = windowManager
    )

    val overlayValueTypeDialog = OverlayChoicesDialog(
        createDialogOverlay = ::createDialogOverlay,
        windowManager = windowManager
    )

    init {
    }

    fun Dialog(title: String, text: String, onConfirm: () -> Unit) {
        overlayInfoDialog.show(title = title, text = text, onConfirm = onConfirm)

    }

    fun InputDialog(title: String, onConfirm: (input: String) -> Unit) {
        overlayInputDialog.show(title = title, onConfirm = onConfirm)
    }
}