package com.kuhakupixel.atg.ui.overlaybutton.service

import android.app.Notification
import android.app.Service
import android.content.Intent
import android.os.IBinder
import androidx.core.app.NotificationCompat
import com.kuhakupixel.atg.ui.overlaybutton.FOREGROUND_SERVICE_NOTIFICATION_ID
import com.kuhakupixel.atg.ui.overlaybutton.INTENT_COMMAND
import com.kuhakupixel.atg.ui.overlaybutton.INTENT_COMMAND_EXIT
import com.kuhakupixel.atg.ui.overlaybutton.INTENT_COMMAND_OVERLAY_BUTTON_CREATE
import com.kuhakupixel.atg.ui.overlaybutton.NOTIFICATION_CHANNEL
import com.kuhakupixel.atg.ui.overlaybutton.logd

class FloatingService() : Service() {
    val state = ServiceState()

    // todo make private
    lateinit var overlayButtonController: OverlayButtonController

    fun onOverlayButtonClick() {
        logd("Overlay Button Is Clicked")
    }

    override fun onCreate() {
        super.onCreate()
        overlayButtonController =
            OverlayButtonController(service = this, onClick = { onOverlayButtonClick() })
    }

    override fun onBind(intent: Intent?): IBinder? {
        return null
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        logd("FloatingService onStartCommand")
        startForeground(FOREGROUND_SERVICE_NOTIFICATION_ID, buildNotification())

        val command = intent!!.getStringExtra(INTENT_COMMAND)
        when (command) {
            INTENT_COMMAND_OVERLAY_BUTTON_CREATE -> {
                state.overlayButtonState.isVisible.value = true
            }

            INTENT_COMMAND_EXIT -> {
                if (state.overlayButtonState.isVisible.value) {
                    overlayButtonController.exitOverlayButton()
                }
                return START_NOT_STICKY
            }
        }
        return START_STICKY
    }

    private fun buildNotification(): Notification {
        val notification: Notification =
            NotificationCompat.Builder(this, NOTIFICATION_CHANNEL).build()
        return notification
    }
}