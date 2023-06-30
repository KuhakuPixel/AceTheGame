package com.kuhakupixel.atg.ui.overlay.service

import android.util.Log
import android.view.ViewGroup
import android.view.WindowManager
import com.kuhakupixel.atg.ui.overlay.OverlayViewHolder
import com.kuhakupixel.atg.ui.overlay.logd

/**
 * when [disableByDestroy] is set to false, it will disable the view
 * only by setting it's alpha to 0, this has advantage
 * where it will be faster to load
 * */
class OverlayViewController(
    val createOverlayViewHolder: () -> OverlayViewHolder,
    val windowManager: WindowManager,
    val name: String = "",
    val disableByDestroy: Boolean = false,
) : OverlayInterface {
    private var viewHolder: OverlayViewHolder? = null

    init {
        if (!disableByDestroy) {
            viewHolder = createOverlayViewHolder()
            logd("${name}: adding view ${viewHolder!!.getView()}")
            windowManager.addView(viewHolder!!.getView(), viewHolder!!.getParams())
            viewHolder!!.setVisible(false)
        }
    }

    override fun enableView() {
        if (!disableByDestroy) {
            viewHolder!!.setVisible(true)
        } else {
            viewHolder = createOverlayViewHolder()
            logd("${name}: adding view ${viewHolder!!.getView()}")
            windowManager.addView(viewHolder!!.getView(), viewHolder!!.getParams())
            Log.d("ATG", "View Spawned")
        }
    }

    override fun disableView() {
        if (!disableByDestroy) {
            viewHolder!!.setVisible(false)
        } else {
            windowManager.removeView(viewHolder!!.getView())
            Log.d("ATG", "View Destroyed")
        }
    }

}