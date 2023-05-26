package com.kuhakupixel.atg.ui.overlay.service

import android.view.WindowManager
import com.kuhakupixel.atg.ui.overlay.OverlayViewHolder
import com.kuhakupixel.atg.ui.overlay.logd

class OverlayViewController(
    val createOverlayViewHolder: () -> OverlayViewHolder,
    val windowManager: WindowManager,
    val name: String = "",
) : OverlayInterface {
    private var viewHolder: OverlayViewHolder? = null

    init {
        viewHolder = createOverlayViewHolder()
    }

    override fun createView() {
        logd("${name}: adding view ${viewHolder!!.getView()}")
        windowManager.addView(viewHolder!!.getView(), viewHolder!!.getParams())
    }

    override fun destroyView() {
        logd("${name}: removing view ${viewHolder!!.getView()}")
        windowManager.removeView(viewHolder!!.getView())
    }

}