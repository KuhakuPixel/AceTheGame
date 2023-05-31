package com.kuhakupixel.atg.ui.overlay.service.OverlayComposeUI

import android.view.WindowManager
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.kuhakupixel.atg.ui.overlay.OverlayViewHolder
import com.kuhakupixel.atg.ui.overlay.service.OverlayViewController
import com.kuhakupixel.atg.ui.theme.AtgTheme


@Composable
private fun DrawOverlayDialog(
    title: String,
    onConfirm: () -> Unit,
    onClose: () -> Unit,
    body: @Composable (modifier: Modifier) -> Unit,
) {

    AtgTheme(darkTheme = true) {
        // A surface container using the 'background' color from the theme
        Surface(
            modifier = Modifier.fillMaxSize(),
        ) {
            Column(
                Modifier
                    .fillMaxSize()
                    .padding(10.dp),
                verticalArrangement = Arrangement.spacedBy(10.dp)

            ) {
                Text(
                    title,
                    fontSize = 20.sp,
                    fontWeight = FontWeight.Bold,
                    modifier = Modifier.weight(0.1f),
                )
                body(Modifier.weight(0.8f))
                // Cancel - Okay Button
                Row(
                    Modifier
                        .weight(0.1f)
                        .fillMaxSize(),
                    horizontalArrangement = Arrangement.SpaceEvenly
                ) {
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
    }
}


/**
 * Show Dialog For overlay screen
 * this can be subclassed to create an even more complex dialog
 * for example, input dialog, multiple choice dialog and etc
 * which have a title, a cancel, confirm button
 * and content which can be set by [InitDialogBody] by subclasses
 * */
open class OverlayDialog(
    private val createDialogOverlay: (
        content: @Composable () -> Unit,
    ) -> OverlayViewHolder,
    private val windowManager: WindowManager,
) {
    private val title: MutableState<String> = mutableStateOf("")
    private var onConfirm: () -> Unit = {}
    private var onClose: () -> Unit = {}
    private var overlayViewController: OverlayViewController? = null

    init {


    }

    fun InitDialogBody(body: @Composable () -> Unit) {
        if (overlayViewController != null) {
            throw IllegalStateException("view Controller have been initialized, but initialized again")
        }

        overlayViewController =
            OverlayViewController(
                createOverlayViewHolder = fun(): OverlayViewHolder {
                    return createDialogOverlay {
                        DrawOverlayDialog(
                            title = title.value,
                            body =
                            { modifier: Modifier ->
                                Box(modifier = modifier) {
                                    body()
                                }
                            },
                            onConfirm = onConfirm,
                            onClose = {
                                onClose()
                                overlayViewController!!.disableView()
                            },
                        )
                    }
                },
                windowManager = windowManager,
            )
    }


    /**
     * open the dialog
     * */

    open fun show(title: String, onConfirm: () -> Unit, onClose: () -> Unit = {}) {
        this.title.value = title
        this.onConfirm = onConfirm
        this.onClose = onClose
        this.overlayViewController!!.enableView()
    }

}