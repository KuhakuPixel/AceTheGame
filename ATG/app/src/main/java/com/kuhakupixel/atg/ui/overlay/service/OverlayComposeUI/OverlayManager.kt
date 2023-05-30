package com.kuhakupixel.atg.ui.overlay.service.OverlayComposeUI

import android.graphics.PixelFormat
import android.view.WindowManager
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Button
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.kuhakupixel.atg.ui.overlay.OverlayViewHolder
import com.kuhakupixel.atg.ui.overlay.service.FloatingService
import com.kuhakupixel.atg.ui.overlay.service.OverlayViewController
import com.kuhakupixel.atg.ui.theme.AtgTheme
import com.kuhakupixel.atg.ui.util.NumberInputField

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

    init {
    }

    fun Dialog(title: String, text: String, onConfirm: () -> Unit) {
        overlayInfoDialog.show(title = title, text = text, onConfirm = onConfirm)

    }

    fun InputDialog(title: String, onConfirm: (input: String) -> Unit) {
        overlayInputDialog.show(title = title, onConfirm = onConfirm)
    }
}