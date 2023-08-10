package com.kuhakupixel.atg.ui.menu

import android.util.Log
import com.kuhakupixel.atg.backend.ACE
import com.kuhakupixel.atg.backend.ACEBaseClient
import com.kuhakupixel.atg.backend.ACEStatusSubscriber
import com.kuhakupixel.atg.backend.ScanProgressData
import com.kuhakupixel.libuberalles.overlay.OverlayContext
import com.kuhakupixel.libuberalles.overlay.service.dialog.OverlayInfoDialog
import kotlin.concurrent.thread

class ScanOptions(
    val inputVal: String,
    val numType: ACE.NumType,
    val scanType: ACE.Operator,
    val initialScanDone: Boolean
) {
}

fun onNextScanClicked(
    overlayContext: OverlayContext,
    scanOptions: ScanOptions,
    ace: ACE,
    onBeforeScanStart: () -> Unit,
    onScanDone: () -> Unit,
    onScanProgress: (progress: Float) -> Unit,
) {
    onBeforeScanStart()
    val statusPublisherPort = ace.getStatusPublisherPort()
    thread {
        // set the value type
        if (!scanOptions.initialScanDone) ace.SetNumType(scanOptions.numType)
        try {
            /**
             * scan against a value if input value
             * is not empty
             * and scan without value otherwise
             * (picking addresses whose value stayed the same, increased and etc)
             * */

            if (scanOptions.inputVal.isBlank()) {
                ace.ScanWithoutValue(scanOptions.scanType)
            } else {
                ace.ScanAgainstValue(
                    scanOptions.scanType,
                    scanOptions.inputVal
                )
            }

            onScanDone()
        } catch (e: ACEBaseClient.InvalidCommandException) {
            OverlayInfoDialog(overlayContext).show(
                title = "Error",
                text = e.stackTraceToString(),
                onConfirm = {},
            )
        }
    }
    /**
     * thread to update the progress as the scan goes, with a subscriber
     * that keeps listening to a port until the scan is done
     * */
    thread {
        try {
            val statusSubscriber = ACEStatusSubscriber(statusPublisherPort)
            statusSubscriber.use { it: ACEStatusSubscriber ->

                var scanProgressData: ScanProgressData =
                    statusSubscriber.GetScanProgress()
                while (!scanProgressData.is_finished) {
                    onScanProgress(scanProgressData.current.toFloat() / scanProgressData.max.toFloat())
                    scanProgressData = statusSubscriber.GetScanProgress()
                }
                // finished
                onScanProgress(0.0f)
            }

        } catch (e: Exception) {
            Log.e("ATG", "Error " + e.toString())

        }

    }


}