package com.kuhakupixel.atg.backend

import android.util.Log
import com.google.gson.Gson
import org.zeromq.ZContext
import org.zeromq.ZMQ
import java.io.Closeable

class ACEStatusSubscriber(port: Int) : Closeable {
    var context: ZContext = ZContext()
    var subscriber: ZMQ.Socket = context.createSocket(SocketType.SUB)
    var gson: Gson = Gson()

    init {
        subscriber.connect(String.format("tcp://localhost:%d", port))
        subscriber.subscribe("")
    }

    fun GetMsg(): String {
        // trim to remove tailing '0' characters
        return subscriber.recvStr(0).trim()
    }

    fun GetScanProgress(): ScanProgressData {
        var scanProgressData = ScanProgressData(0, 0, false)
        try {
            val scanProgress = GetMsg()
            scanProgressData = gson.fromJson(scanProgress, ScanProgressData::class.java)
        } catch (e: Exception) {
            Log.e("ATG", e.stackTraceToString())
        }
        return scanProgressData
    }

    override fun close() {
        context.close()
    }
}