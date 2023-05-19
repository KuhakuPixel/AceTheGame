package com.kuhakupixel.atg.ui.overlaybutton

import android.view.Gravity
import android.view.WindowManager
import androidx.compose.runtime.Composable
import androidx.compose.ui.platform.ComposeView
import com.kuhakupixel.atg.ui.overlaybutton.service.FloatingService
import com.kuhakupixel.atg.ui.overlaybutton.service.overlayViewFactory

class OverlayViewHolder(

    val windowManager: WindowManager,
    val params: WindowManager.LayoutParams,
    val service: FloatingService,
) {

    var view: ComposeView? = null
        get() = field

    init {
        params.gravity = Gravity.TOP or Gravity.LEFT
    }

    fun updateViewPos(x: Int, y: Int) {
        params.x = x
        params.y = y
        windowManager.updateViewLayout(view, params)

    }

    fun setContent(content: @Composable (composeView: ComposeView) -> Unit = {}) {
        this.view = overlayViewFactory(service = service, content = content)

    }
}