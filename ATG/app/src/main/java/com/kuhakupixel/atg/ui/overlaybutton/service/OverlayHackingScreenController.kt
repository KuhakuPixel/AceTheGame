package com.kuhakupixel.atg.ui.overlaybutton.service

import android.content.Context
import android.graphics.PixelFormat
import android.view.WindowManager
import androidx.compose.material.Text
import com.kuhakupixel.atg.ui.HackingScreen
import com.kuhakupixel.atg.ui.overlaybutton.OverlayViewHolder

class OverlayHackingScreenController(
    val windowManager: WindowManager,
    val service: FloatingService
) :
    OverlayInterface {

    private val hackingScreenController = OverlayViewController(
        createOverlayViewHolder = this::createOverlay,
        windowManager = windowManager,
        name = "Hacking Screen",
    )

    private fun createOverlay(): OverlayViewHolder {

        val hackingScreen = OverlayViewHolder(
            windowManager = windowManager,
            WindowManager.LayoutParams(
                WindowManager.LayoutParams.MATCH_PARENT,
                WindowManager.LayoutParams.MATCH_PARENT,
                0,
                0,
                WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
                PixelFormat.TRANSLUCENT
            ),
            service = service,
        )

        hackingScreen.params.alpha = 0.8f
        hackingScreen.setContent {
            // Text("hello world")
            HackingScreen()
        }
        return hackingScreen
    }

    override fun destroyView() {
        hackingScreenController.destroyView()
    }

    override fun createView() {
        hackingScreenController.createView()
    }
}