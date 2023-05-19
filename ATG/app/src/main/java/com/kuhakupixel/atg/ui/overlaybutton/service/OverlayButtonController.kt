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
import com.kuhakupixel.atg.ui.overlaybutton.OVERLAY_BUTTON_SIZE_DP
import com.kuhakupixel.atg.ui.overlaybutton.OverlayViewHolder
import com.kuhakupixel.atg.ui.overlaybutton.logd

val LocalServiceState = compositionLocalOf<ServiceState> { error("No ServiceState provided") }

class OverlayButtonController(val windowManager: WindowManager,val service: FloatingService, val onClick: () -> Unit) :
    OverlayInterface {

    private val overlayButtonState = service.state.overlayButtonState

    private val density = service.resources.displayMetrics.density
    val timerSizePx = (OVERLAY_BUTTON_SIZE_DP * density).toInt()
    private val fullScreenViewController = OverlayViewController(
        createOverlayViewHolder = this::createFullscreenOverlay,
        windowManager = windowManager,
        name = "FullScreen"
    )

    private val overlayButtonViewController = OverlayViewController(
        createOverlayViewHolder = this::createOverlayButtonClickTarget,
        windowManager = windowManager,
        name = "Button ClickTarget"
    )


    private fun createFullscreenOverlay(): OverlayViewHolder {
        val fullscreenOverlay = OverlayViewHolder(
            windowManager = windowManager,
            params = WindowManager.LayoutParams(
                WindowManager.LayoutParams.MATCH_PARENT,
                WindowManager.LayoutParams.MATCH_PARENT,
                WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
                WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE or WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
                PixelFormat.TRANSLUCENT
            ),
            service = service,
        )

        fullscreenOverlay.setContent {
            CompositionLocalProvider(LocalServiceState provides service.state) {
                OverlayContent(showOverlayButton = overlayButtonState.isVisible.value)
            }
        }

        // https://developer.android.com/reference/android/view/WindowManager.LayoutParams#MaximumOpacity
        fullscreenOverlay.params.alpha = 1f
        val inputManager =
            service.applicationContext.getSystemService(INPUT_SERVICE) as InputManager
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            logd("inputManager max opacity ${inputManager.maximumObscuringOpacityForTouch}")
            fullscreenOverlay.params.alpha = inputManager.maximumObscuringOpacityForTouch
        }

        return fullscreenOverlay
    }

    private fun createOverlayButtonClickTarget(): OverlayViewHolder {
        val overlayButtonClickTarget = OverlayViewHolder(
            windowManager = windowManager,
            WindowManager.LayoutParams(
                timerSizePx,
                timerSizePx,
                0,
                0,
                WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
                PixelFormat.TRANSLUCENT
            ), service = service
        )
        overlayButtonClickTarget.setContent {

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


    override fun createView() {

        logd("Init the controller ")
        fullScreenViewController.createView()
        overlayButtonViewController.createView()
        overlayButtonState.isVisible.value = true
    }

    override fun destroyView() {
        exitOverlayButton()
    }

    private fun exitOverlayButton() {
        fullScreenViewController.destroyView()
        overlayButtonViewController.destroyView()
        overlayButtonState.isVisible.value = false
        service.stopSelf()
    }
}