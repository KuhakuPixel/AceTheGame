package com.kuhakupixel.atg.ui.overlaybutton.service

import android.view.WindowManager
import com.kuhakupixel.atg.ui.overlaybutton.OverlayViewHolder
import com.kuhakupixel.atg.ui.overlaybutton.logd

class OverlayViewController(
    val createOverlayViewHolder: () -> OverlayViewHolder,
    val windowManager: WindowManager,
    val name: String = "",
) : OverlayInterface {
    private var viewHolder: OverlayViewHolder? = null

    init {
        // initialize and add to window
        viewHolder = createOverlayViewHolder()
        logd("${name}: adding view ${viewHolder!!.view}")
        windowManager.addView(viewHolder!!.view, viewHolder!!.getParams())
        // disable by default
        viewHolder!!.disable()
    }

    override fun enableView() {
        viewHolder!!.enable()
    }

    override fun disableView() {
        viewHolder!!.disable()
        logd("${name}: removing view ${viewHolder!!.view}")
    }

}