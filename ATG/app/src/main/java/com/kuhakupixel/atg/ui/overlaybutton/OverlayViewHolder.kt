package com.kuhakupixel.atg.ui.overlaybutton

import android.content.pm.ActivityInfo
import android.view.Gravity
import android.view.WindowManager
import androidx.compose.runtime.Composable
import androidx.compose.ui.platform.ComposeView
import com.kuhakupixel.atg.ui.overlaybutton.service.FloatingService
import com.kuhakupixel.atg.ui.overlaybutton.service.overlayViewFactory

class OverlayViewHolder(

    val windowManager: WindowManager,
    private val params: WindowManager.LayoutParams,
    val alpha: Float,
    val service: FloatingService,
    val potraitOnly: Boolean = false,
) {

    private var view: ComposeView? = null

    val originalWindowFlag: Int
    val originalWindowAlpha: Float
    val originalScreenOrientation: Int

    init {
        params.gravity = Gravity.TOP or Gravity.LEFT
        params.alpha = alpha
        //
        // save original params
        originalWindowFlag = params.flags
        originalWindowAlpha = params.alpha
        originalScreenOrientation = params.screenOrientation
    }

    fun getParams(): WindowManager.LayoutParams {
        return this.params
    }

    fun getView(): ComposeView? {
        return this.view
    }


    fun updateViewPos(x: Int, y: Int) {
        params.x = x
        params.y = y
        windowManager.updateViewLayout(view, params)
    }

    fun disable() {
        // make sure so screen is not locked up to one orientation
        params.screenOrientation = originalScreenOrientation
        // set not visible
        params.alpha = 0f
        // not touchable so it won't block input when disabled
        params.flags =
            WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE or WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
        windowManager.updateViewLayout(view, params)
    }

    fun enable() {
        params.alpha = originalWindowAlpha
        // not touchable so it won't block input when disabled
        params.flags = originalWindowFlag
        // lock if potrait only
        if (potraitOnly)
            params.screenOrientation = ActivityInfo.SCREEN_ORIENTATION_PORTRAIT
        windowManager.updateViewLayout(view, params)
    }

    fun setContent(content: @Composable (composeView: ComposeView) -> Unit = {}) {
        this.view = overlayViewFactory(service = service, content = content)

    }
}