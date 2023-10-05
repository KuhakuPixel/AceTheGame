package com.kuhakupixel.atg.ui.menu

import android.util.Log
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import com.kuhakupixel.atg.backend.ACE
import com.kuhakupixel.atg.backend.ACEBaseClient
import com.kuhakupixel.atg.backend.ACEStatusSubscriber
import com.kuhakupixel.atg.backend.ScanProgressData
import com.kuhakupixel.libuberalles.overlay.OverlayContext
import com.kuhakupixel.libuberalles.overlay.service.dialog.OverlayInfoDialog
import java.util.concurrent.CompletableFuture
import kotlin.concurrent.thread

class ScanOptions(
    val inputVal: String,
    val numType: ACE.NumType,
    val scanType: ACE.Operator,
    val regionLevel: ACE.RegionLevel,
    val initialScanDone: Boolean,
) {
}

fun onNextScanClicked(
    scanOptions: ScanOptions,
    ace: ACE,
    onBeforeScanStart: () -> Unit,
    onScanDone: () -> Unit,
    onScanProgress: (progress: Float) -> Unit,
    onScanError: (e: Exception) -> Unit,
) {
    onBeforeScanStart()
    val statusPublisherPort = ace.getStatusPublisherPort()
    CompletableFuture.supplyAsync<Unit> {
        // set the value type
        if (!scanOptions.initialScanDone) {
            ace.SetNumType(scanOptions.numType)
            ace.SetRegionLevel(scanOptions.regionLevel)
        }
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
    }.exceptionally {e ->
        onScanError(e as Exception)
        onScanDone()
    }

    /**
     * thread to update the progress as the scan goes, with a subscriber
     * that keeps listening to a port until the scan is done
     * */
    thread {
        try {
            val statusSubscriber = ACEStatusSubscriber(statusPublisherPort!!)
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