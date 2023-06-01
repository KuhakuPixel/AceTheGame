package com.kuhakupixel.atg.ui.overlay.service

import androidx.compose.runtime.MutableState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.unit.IntOffset

class OverlayState {
    val isVisible: MutableState<Boolean> = mutableStateOf(false)
    var timerOffset by mutableStateOf(IntOffset.Zero)
    var showTrash by mutableStateOf(false)
    var isTimerHoverTrash = false

}