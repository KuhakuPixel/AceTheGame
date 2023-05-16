package com.kuhakupixel.atg.ui.overlaybutton.service

import android.content.Context
import android.content.Context.INPUT_SERVICE
import android.graphics.PixelFormat
import android.hardware.input.InputManager
import android.os.Build
import android.view.WindowManager
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.compositionLocalOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import com.kuhakupixel.atg.ui.overlaybutton.OverlayViewHolder
import com.kuhakupixel.atg.ui.overlaybutton.OVERLAY_BUTTON_SIZE_DP
import com.kuhakupixel.atg.ui.overlaybutton.logd

val LocalServiceState = compositionLocalOf<ServiceState> { error("No ServiceState provided") }

class OverlayButtonController(val service: FloatingService, val onClick: () -> Unit) {

    private val overlayButtonState = service.state.overlayButtonState

    private val density = service.resources.displayMetrics.density
    val timerSizePx = (OVERLAY_BUTTON_SIZE_DP * density).toInt()
    val windowManager = service.getSystemService(Context.WINDOW_SERVICE) as WindowManager
    val fullScreenViewController = OverlayViewController(
        createOverlayViewHolder = this::createFullscreenOverlay,
        windowManager = windowManager,
        name = "FullScreen"
    )

    val overlayButtonViewController = OverlayViewController(
        createOverlayViewHolder = this::createOverlayButtonClickTarget,
        windowManager = windowManager,
        name = "Button ClickTarget"
    )

    init {
        logd("OverlayController init")
        initViewControllers()
    }

    private fun createFullscreenOverlay(): OverlayViewHolder {
        val fullscreenOverlay = OverlayViewHolder(
            params = WindowManager.LayoutParams(
                WindowManager.LayoutParams.MATCH_PARENT,
                WindowManager.LayoutParams.MATCH_PARENT,
                WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
                WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE or WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
                PixelFormat.TRANSLUCENT
            ),
            service = service,
        )

        // https://developer.android.com/reference/android/view/WindowManager.LayoutParams#MaximumOpacity
        fullscreenOverlay.params.alpha = 1f
        val inputManager =
            service.applicationContext.getSystemService(INPUT_SERVICE) as InputManager
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            logd("inputManager max opacity ${inputManager.maximumObscuringOpacityForTouch}")
            fullscreenOverlay.params.alpha = inputManager.maximumObscuringOpacityForTouch
        }

        fullscreenOverlay.view.setContent {
            CompositionLocalProvider(LocalServiceState provides service.state) {
                OverlayContent(showOverlayButton = overlayButtonState.isVisible.value)
            }
        }

        return fullscreenOverlay
    }

    private fun createOverlayButtonClickTarget(): OverlayViewHolder {
        val overlayButtonClickTarget = OverlayViewHolder(
            WindowManager.LayoutParams(
                timerSizePx,
                timerSizePx,
                0,
                0,
                WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
                PixelFormat.TRANSLUCENT
            ), service
        )
        overlayButtonClickTarget.view.setContent {
            val showClickTarget = remember { mutableStateOf(true) }
            if (showClickTarget.value) {
                ClickTarget(
                    serviceState = service.state,
                    controller = this,
                    overlayState = overlayButtonState,
                    viewHolder = overlayButtonClickTarget,
                    onDropOnTrash = {
                        exitOverlayButton()
                        showClickTarget.value = false
                    },
                    onClick = {
                        onClick()
                    },
                )
            }
        }
        return overlayButtonClickTarget
    }


    private fun createView() {

        fullScreenViewController.createView()
        overlayButtonViewController.createView()
    }

    private fun destroyView() {
        fullScreenViewController.destroyView()
        overlayButtonViewController.destroyView()
    }

    private fun initViewControllers() {
        logd("Init the controller ")
        createView()
    }

    fun exitOverlayButton() {
        destroyView()
        overlayButtonState.isVisible.value = false
        service.stopSelf()
    }
}