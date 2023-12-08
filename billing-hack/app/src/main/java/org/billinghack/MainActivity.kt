package org.billinghack

import android.content.ComponentName
import android.content.Intent
import android.content.ServiceConnection
import android.os.Bundle
import android.os.IBinder
import android.util.Log
import android.view.View
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {
    fun onClick(v: View?) {
        val intent = Intent("org.billinghack.BillingService.BIND")
        intent.setPackage("org.billinghack")
        val queryIntentServices = this.packageManager.queryIntentServices(intent, 0)
        if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
            val resolveInfo = queryIntentServices[0]
            if (resolveInfo.serviceInfo != null) {
                val str = resolveInfo.serviceInfo.packageName
                val str2 = resolveInfo.serviceInfo.name
                if ("org.billinghack" != str || str2 == null) {
                    Log.d("BillingClient", "The device doesn't have valid Play Store.")
                } else {
                    val componentName = ComponentName(str, str2)
                    val intent2 = Intent(intent)
                    intent2.component = componentName
                    intent2.putExtra("playBillingLibraryVersion", 10)
                    if (this.bindService(intent2, mConnection, BIND_AUTO_CREATE)) {
                        Log.d("BillingClient", "Service was bonded successfully.")
                        return
                    }
                    Log.d("BillingClient", "Connection to Billing service is blocked.")
                }
            }
        }
        Log.d("BillingClient", "Billing service unavailable on device.")
    }

    private val mConnection: ServiceConnection = object : ServiceConnection {
        override fun onServiceConnected(className: ComponentName, service: IBinder) {
            // This is called when the connection with the service has been
            // established, giving us the object we can use to
            // interact with the service.  We are communicating with the
            // service using a Messenger, so here we get a client-side
            // representation of that from the raw IBinder object.
        }

        override fun onServiceDisconnected(className: ComponentName) {
            // This is called when the connection with the service has been
            // unexpectedly disconnected&mdash;that is, its process crashed.
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
    }
}