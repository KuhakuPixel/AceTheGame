package com.kuhakupixel.atg.ui.overlay.service

import android.graphics.PixelFormat
import android.view.WindowManager
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Button
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextField
import androidx.compose.runtime.Composable
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.kuhakupixel.atg.ui.overlay.OverlayViewHolder
import com.kuhakupixel.atg.ui.theme.AtgTheme
import com.kuhakupixel.atg.ui.util.NumberInputField

class OverlayManager(
    private val windowManager: WindowManager,
    private val service: FloatingService
) {
    private var dialogController: OverlayViewController? = null
    private var inputDialogController: OverlayViewController? = null

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

    private val dialogTitle: MutableState<String> = mutableStateOf("")
    private var dialogOnConfirm: () -> Unit = {}
    private val dialogText: MutableState<String> = mutableStateOf("")


    @Composable
    private fun _Dialog(
        title: String,
        body: @Composable () -> Unit,
        onConfirm: () -> Unit,
        onClose: () -> Unit
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
                    Text(title, fontSize = 20.sp, fontWeight = FontWeight.Bold)
                    body()
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
        }
    }

    @Composable
    private fun ATGDialog(title: String, text: String, onConfirm: () -> Unit, onClose: () -> Unit) {
        _Dialog(
            title = title,
            body = {
                Text(
                    text,
                    modifier = Modifier
                        .verticalScroll(rememberScrollState())
                )

            },
            onConfirm = onConfirm, onClose = onClose,
        )
    }

    private var inputDialogOnConfirm: (input: String) -> Unit = {}

    @Composable
    private fun ATGInputValueDialog(
        title: String,
        onClose: () -> Unit,
        onConfirm: (input: String) -> Unit,
    ) {
        var valueInput: MutableState<String> = remember { mutableStateOf("") }
        _Dialog(
            title = title,
            body = {
                NumberInputField(
                    value = valueInput.value,
                    onValueChange = { value ->
                        valueInput.value = value
                    },
                    label = "Value Input ...",
                    placeholder = "value ...",
                )
            },
            onClose = onClose,
            onConfirm = { onConfirm(valueInput.value) },
        )
    }

    init {

        dialogController =
            OverlayViewController(
                createOverlayViewHolder = fun(): OverlayViewHolder {
                    return createDialogOverlay {
                        ATGDialog(
                            title = dialogTitle.value,
                            onConfirm = { dialogOnConfirm() },
                            onClose = {
                                dialogController!!.disableView()
                            },
                            text = dialogText.value
                        )
                    }
                },
                windowManager = windowManager,
            )

        inputDialogController =
            OverlayViewController(
                createOverlayViewHolder = fun(): OverlayViewHolder {
                    return createDialogOverlay {
                        ATGInputValueDialog(
                            title = dialogTitle.value,
                            onConfirm = { input -> inputDialogOnConfirm(input) },
                            onClose = {
                                inputDialogController!!.disableView()
                            },
                        )
                    }
                },
                windowManager = windowManager,
            )
    }

    fun Dialog(title: String, text: String, onConfirm: () -> Unit) {
        dialogTitle.value = title
        dialogText.value = text
        dialogOnConfirm = onConfirm
        dialogController!!.enableView()

    }

    fun InputDialog(title: String, onConfirm: (input: String) -> Unit) {
        dialogTitle.value = title
        inputDialogOnConfirm = onConfirm
        inputDialogController!!.enableView()

    }
}