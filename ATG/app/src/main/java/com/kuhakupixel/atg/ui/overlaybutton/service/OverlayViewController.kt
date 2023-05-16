package com.kuhakupixel.atg.ui.overlaybutton.service

import android.view.WindowManager
import com.kuhakupixel.atg.ui.overlaybutton.OverlayViewHolder
import com.kuhakupixel.atg.ui.overlaybutton.logd

class OverlayViewController(
    val createOverlayViewHolder: () -> OverlayViewHolder,
    val windowManager: WindowManager,
    val name: String = "",
) {
    var viewHolder: OverlayViewHolder? = null

    // doitwrong
    init {
    }

    fun createView() {
        viewHolder = createOverlayViewHolder()
        logd("${name}: adding view ${viewHolder!!.view}")
        windowManager.addView(viewHolder!!.view, viewHolder!!.params)
    }

    fun destroyView() {
        logd("${name}: removing view ${viewHolder!!.view}")
        // wrap in try catch???
        windowManager.removeView(viewHolder!!.view)
    }

}