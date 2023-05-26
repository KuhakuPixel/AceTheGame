package com.kuhakupixel.atg.ui.overlay

import android.util.Log

fun logd(s: String) {
    val currentLineInfo= Exception().stackTrace[1]
    Log.d("OverlayService","$currentLineInfo: " +s)
}