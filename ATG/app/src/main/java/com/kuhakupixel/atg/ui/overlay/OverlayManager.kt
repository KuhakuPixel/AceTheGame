package com.kuhakupixel.atg.ui.overlay

import android.graphics.PixelFormat
import android.view.WindowManager
import androidx.compose.runtime.Composable
import com.kuhakupixel.atg.ui.overlay.service.FloatingService
import com.kuhakupixel.atg.ui.overlay.service.OverlayComposeUI.OverlayChoicesDialog
import com.kuhakupixel.atg.ui.overlay.service.OverlayComposeUI.OverlayInfoDialog
import com.kuhakupixel.atg.ui.overlay.service.OverlayComposeUI.OverlayInputDialog

class OverlayManager(
    private val windowManager: WindowManager,
    private val service: FloatingService
) {

    private fun createDialogOverlay(
        content: @Composable () -> Unit,
    ): OverlayViewHolder {

        val dialogViewHolder = OverlayViewHolder(
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

        dialogViewHolder.setContent {
            content()
        }

        return dialogViewHolder
    }

    init {
    }

    fun getInfoDialog(): OverlayInfoDialog {
        return OverlayInfoDialog(
            createDialogOverlay = ::createDialogOverlay,
            windowManager = windowManager
        )
    }

    fun getInputDialog(): OverlayInputDialog {
        return OverlayInputDialog(
            createDialogOverlay = ::createDialogOverlay,
            windowManager = windowManager
        )
    }

    fun getChoicesDialog(): OverlayChoicesDialog {
        return OverlayChoicesDialog(
            createDialogOverlay = ::createDialogOverlay,
            windowManager = windowManager
        )
    }
}