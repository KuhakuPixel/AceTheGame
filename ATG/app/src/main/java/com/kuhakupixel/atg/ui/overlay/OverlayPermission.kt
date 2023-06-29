package com.kuhakupixel.atg.ui.overlay

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.provider.Settings
import androidx.activity.ComponentActivity

class OverlayPermission {

    companion object {
        fun askForOverlayPermission(context: Context, componentActivity: ComponentActivity) {
            // if not construct intent to request permi
            // https://stackoverflow.com/a/40583163/14073678
            val intent = Intent(
                Settings.ACTION_MANAGE_OVERLAY_PERMISSION,
                Uri.parse("package:" + context.packageName)
            )
            componentActivity.startActivityForResult(intent, 0)
        }
    }
}