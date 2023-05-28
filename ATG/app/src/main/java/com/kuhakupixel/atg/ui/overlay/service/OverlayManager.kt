package com.kuhakupixel.atg.ui.overlay.service

import android.graphics.PixelFormat
import android.view.WindowManager
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import com.kuhakupixel.atg.backend.ATG
import com.kuhakupixel.atg.ui.overlay.OverlayViewHolder
import com.kuhakupixel.atg.ui.theme.AtgTheme

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

    private val dialogText: MutableState<String> = mutableStateOf("")
    private var dialogOnConfirm: () -> Unit = {}
    private val dialogContent: MutableState<String> = mutableStateOf("")

    @Composable
    private fun ATGDialog(title: String, onConfirm: () -> Unit, onClose: () -> Unit) {

        Column(Modifier.fillMaxSize()) {
            Text(title)
            Row(Modifier.fillMaxSize(), horizontalArrangement = Arrangement.SpaceEvenly) {
                Button(
                    onClick = onClose,
                ) { Text("Cancel") }

                Button(
                    onClick = {
                        onClose()
                        onConfirm()
                    },
                ) { Text("Okay") }
            }
        }
    }

    init {

        dialogController =
            OverlayViewController(
                createOverlayViewHolder = fun(): OverlayViewHolder {
                    return createDialogOverlay {

                        AtgTheme(darkTheme = true) {
                            // A surface container using the 'background' color from the theme
                            Surface(
                                modifier = Modifier.fillMaxSize(),
                            ) {
                                ATGDialog(
                                    title = dialogText.value,
                                    onConfirm = { dialogOnConfirm() },
                                    onClose = {
                                        dialogController!!.disableView()
                                    },
                                )
                            }
                        }
                    }
                },
                windowManager = windowManager,
            )
    }

    //@Composable
    fun InfoDialog(msg: String, onConfirm: () -> Unit) {
        dialogText.value = msg
        dialogOnConfirm = onConfirm
        dialogController!!.enableView()

    }
}