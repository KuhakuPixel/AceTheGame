package com.kuhakupixel.atg.ui.overlaybutton

import android.view.Gravity
import android.view.WindowManager
import com.kuhakupixel.atg.ui.overlaybutton.service.FloatingService
import com.kuhakupixel.atg.ui.overlaybutton.service.overlayViewFactory

class OverlayViewHolder(val params: WindowManager.LayoutParams, service: FloatingService) {
  val view = overlayViewFactory(service)

  init {
    params.gravity = Gravity.TOP or Gravity.LEFT
  }
}