package com.kuhakupixel.atg.ui.overlaybutton

import android.util.Log

fun logd(s: String) {
    val currentLineInfo= Exception().stackTrace[1]
    Log.d("Overlay Service","$currentLineInfo: " +s)
}