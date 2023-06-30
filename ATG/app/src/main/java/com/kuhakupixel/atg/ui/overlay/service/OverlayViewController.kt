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
    private var enabledCount = 0

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
            /**
             * prevent reuse  (enable, disable  and then enable again)
             * in the same instance because the code is not thread safe
             *
             * so instead to reuse, a new instance is needed everytime
             *
             * (I find the bug, where I have a button that shows a dialog (with close button
             * that destroy the dialog it self) and find that if I happens to click the show
             * dialog button twice, before the dialog even show, then there can be a bug
             * where the dialog created isn't attached to WindowManager for some reason
             * therefore when trying to destroy it, it will cause crash (not attached to windowmanager exception)
             *
             * cannot explain why this happened but it happened, so I need it to be this way
             * to prevent that
             * */
            if (enabledCount >= 1)
                throw IllegalStateException("Cannot reuse this view controller because it is not thread safe , a new instance is needed ")
            //
            viewHolder = createOverlayViewHolder()
            logd("${name}: adding view ${viewHolder!!.getView()}")
            windowManager.addView(viewHolder!!.getView(), viewHolder!!.getParams())
            Log.d("ATG", "View Spawned")
        }
        enabledCount++
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