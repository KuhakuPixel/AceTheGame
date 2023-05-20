package com.kuhakupixel.atg.ui.overlaybutton.service

import android.content.Context
import android.graphics.PixelFormat
import android.view.WindowManager
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material.Text
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.ui.Modifier
import com.kuhakupixel.atg.ui.HackingScreen
import com.kuhakupixel.atg.ui.MainScreen
import com.kuhakupixel.atg.ui.overlaybutton.OverlayViewHolder
import com.kuhakupixel.atg.ui.theme.AtgTheme

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
                0,
                PixelFormat.TRANSLUCENT
            ),
            service = service,
        )

        hackingScreen.params.alpha = 0.9f
        hackingScreen.setContent {
            // Text("hello world")
            AtgTheme(darkTheme = true) {
                // A surface container using the 'background' color from the theme
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colorScheme.background
                ) {
                    HackingScreen()
                }
            }
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