package com.kuhakupixel.atg.ui.overlay.service

import android.graphics.PixelFormat
import android.view.WindowManager
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.material.Text
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.Modifier
import com.kuhakupixel.atg.ui.HackingScreen
import com.kuhakupixel.atg.ui.overlay.OverlayViewHolder
import com.kuhakupixel.atg.ui.overlay.service.OverlayComposeUI.OverlayManager
import com.kuhakupixel.atg.ui.theme.AtgTheme
import com.kuhakupixel.atg.ui.util.OverlayDropDown

class OverlayHackingScreenController(
    val windowManager: WindowManager, val service: FloatingService, val onClosed: () -> Unit
) : OverlayInterface {

    private val hackingScreenController = OverlayViewController(
        createOverlayViewHolder = this::createOverlay,
        windowManager = windowManager,
        name = "Hacking Screen",
    )

    var currentCounter = 0
    val dropdownEnabled: MutableState<Boolean> = mutableStateOf(true)
    val dropdownExpanded: MutableState<Boolean> = mutableStateOf(false)
    val dropdownSelectedIdx: MutableState<Int> = mutableStateOf(0)
    private fun createOverlay(): OverlayViewHolder {

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
            potraitOnly = false,
        )

        hackingScreen.setContent {
            val overlayManager = OverlayManager(windowManager, service)
            // Text("hello world")
            AtgTheme(darkTheme = true) {
                // A surface container using the 'background' color from the theme
                Surface(
                    modifier = Modifier.fillMaxSize(), color = MaterialTheme.colorScheme.background
                ) {
                    Column(modifier = Modifier.fillMaxSize()) {

                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.Center,
                        ) {
                            Button(onClick = onClosed) {
                                Text("Close")
                            }
                            OverlayDropDown(
                                label = "Choice",
                                expanded = dropdownExpanded,
                                options = listOf("2", "3", "4"),
                                selectedOptionIndex = dropdownSelectedIdx,
                                enabled = dropdownEnabled,
                                overlayManager = overlayManager,
                            )
                        }
                        HackingScreen(overlayManager = overlayManager)
                    }
                }
            }
        }
        return hackingScreen
    }

    override fun disableView() {
        hackingScreenController.disableView()
    }

    override fun enableView() {
        hackingScreenController.enableView()
    }
}