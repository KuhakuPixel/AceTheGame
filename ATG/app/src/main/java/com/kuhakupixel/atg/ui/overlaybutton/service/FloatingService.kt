package com.kuhakupixel.atg.ui.overlaybutton.service

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.Service
import android.content.Context
import android.content.Intent
import android.os.Build
import android.os.IBinder
import androidx.annotation.RequiresApi
import androidx.core.app.NotificationCompat
import com.kuhakupixel.atg.ui.overlaybutton.FOREGROUND_SERVICE_NOTIFICATION_ID
import com.kuhakupixel.atg.ui.overlaybutton.INTENT_COMMAND
import com.kuhakupixel.atg.ui.overlaybutton.INTENT_COMMAND_EXIT
import com.kuhakupixel.atg.ui.overlaybutton.INTENT_COMMAND_OVERLAY_BUTTON_CREATE
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

    // https://stackoverflow.com/a/47533338/14073678
    private fun buildNotification(): Notification {

        // If earlier version channel ID is not used
        // https://developer.android.com/reference/android/support/v4/app/NotificationCompat.Builder.html#NotificationCompat.Builder(android.content.Context)
        var channelId: String = ""
        //
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            channelId = createNotificationChannel("ATGOverlayButton", "ATG's overlay button service")
        }

        val notification: Notification =
            NotificationCompat.Builder(this, channelId).build()
        return notification
    }

    @RequiresApi(Build.VERSION_CODES.O)
    private fun createNotificationChannel(channelId: String, channelName: String): String {
        val chan = NotificationChannel(
            channelId,
            channelName, NotificationManager.IMPORTANCE_NONE
        )
        val service = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        service.createNotificationChannel(chan)
        return channelId
    }
}