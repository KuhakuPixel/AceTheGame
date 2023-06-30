package com.kuhakupixel.atg.ui.overlay.service

import android.util.Log
import android.view.WindowManager
import com.kuhakupixel.atg.ui.overlay.OverlayViewHolder
import com.kuhakupixel.atg.ui.overlay.logd

enum class OverlayEnableDisableMode {
    /**
     * Create new view when enabled and
     * destroy view when disabled
     *
     * preferable if the overlay view is intended to be used only once
     * where we don't want to remember its state anymore
     * */
    CREATE_AND_DESTROY,

    /**
     * Set view to visible when enabled
     * and set view to invisible when disabled
     *
     * preferable if we want to remember the overlay view 's state
     * after we disable and enable it
     * */
    VISIBLE_AND_INVISIBLE,
}

/**
 * when [enableDisableMode] is set to false, it will disable the view
 * only by setting it's alpha to 0, this has advantage
 * where it will be faster to load
 * */
class OverlayViewController(
    val createOverlayViewHolder: () -> OverlayViewHolder,
    val windowManager: WindowManager,
    val name: String = "",
    val enableDisableMode: OverlayEnableDisableMode = OverlayEnableDisableMode.VISIBLE_AND_INVISIBLE,
) : OverlayInterface {
    private var viewHolder: OverlayViewHolder? = null
    private var enabledCount = 0

    init {
        when (enableDisableMode) {
            OverlayEnableDisableMode.VISIBLE_AND_INVISIBLE -> {
                viewHolder = createOverlayViewHolder()
                logd("${name}: adding view ${viewHolder!!.getView()}")
                windowManager.addView(viewHolder!!.getView(), viewHolder!!.getParams())
                viewHolder!!.setVisible(false)
            }

            OverlayEnableDisableMode.CREATE_AND_DESTROY -> {}
        }
    }

    override fun enableView() {
        when (enableDisableMode) {
            OverlayEnableDisableMode.VISIBLE_AND_INVISIBLE -> {
                viewHolder!!.setVisible(true)
            }

            OverlayEnableDisableMode.CREATE_AND_DESTROY -> {
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
                if (enabledCount >= 1) {
                    throw IllegalStateException(
                        "Cannot reuse this view controller when [enableDisableMode] is set to [${this.enableDisableMode.toString()}] " +
                                "because it is not thread safe when creating/destroying, a new instance is needed "
                    )
                }
                //
                viewHolder = createOverlayViewHolder()
                logd("${name}: adding view ${viewHolder!!.getView()}")
                windowManager.addView(viewHolder!!.getView(), viewHolder!!.getParams())
                Log.d("ATG", "View Spawned")
            }
        }
        enabledCount++
    }

    override fun disableView() {

        when (enableDisableMode) {
            OverlayEnableDisableMode.VISIBLE_AND_INVISIBLE -> {
                viewHolder!!.setVisible(false)
            }

            OverlayEnableDisableMode.CREATE_AND_DESTROY -> {
                windowManager.removeView(viewHolder!!.getView())
                Log.d("ATG", "View Destroyed")
            }
        }
    }

}