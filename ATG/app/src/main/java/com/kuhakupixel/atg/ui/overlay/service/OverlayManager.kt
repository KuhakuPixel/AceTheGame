package com.kuhakupixel.atg.ui.overlay.service

import android.graphics.PixelFormat
import android.view.WindowManager
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import com.kuhakupixel.atg.ui.overlay.OverlayViewHolder
import com.kuhakupixel.atg.ui.util.ShowTextDialog

class OverlayManager(
    private val windowManager: WindowManager,
    private val service: FloatingService
) {
    private var dialogController: OverlayViewController? = null

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

    private fun SetDialogController(content: @Composable () -> Unit) {

        dialogController =
            OverlayViewController(
                createOverlayViewHolder = fun(): OverlayViewHolder {
                    return createDialogOverlay(content = content)
                },
                windowManager = windowManager,
            )
    }

    @Composable
    fun InfoDialog(msg: String, onConfirm: () -> Unit) {
        SetDialogController {
            Box(
                Modifier
                    .fillMaxSize(),
                contentAlignment = Alignment.Center
            ) {
                Box(Modifier.background(Color.White).fillMaxSize(0.6f)) {
                    Column {
                        Text(msg)
                        Row(horizontalArrangement = Arrangement.SpaceEvenly) {
                            Button(
                                onClick = {
                                    dialogController!!.destroyView()
                                },
                            ) { Text("Close") }

                            Button(
                                onClick = {
                                    onConfirm
                                },
                            ) { Text("Okay") }
                        }
                    }
                }
            }
        }
        dialogController!!.createView()
    }
}