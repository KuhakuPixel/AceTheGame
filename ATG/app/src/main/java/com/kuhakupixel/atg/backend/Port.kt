package com.kuhakupixel.atg.backend

import java.io.IOException

object Port {
    @Throws(IOException::class)
    fun GetOpenPorts(portCount: Int): List<Integer> {
        val sockets: List<ServerSocket> = ArrayList<ServerSocket>()
        val openPorts: List<Integer> = ArrayList<Integer>()
        for (i in 0 until portCount) {
            // if we pass 0, a port number will be automatically allocated
            // https://docs.oracle.com/javase/7/docs/api/java/net/ServerSocket.html#ServerSocket%28int%29
            val socket = ServerSocket(0)
            sockets.add(socket)
            val portNum: Integer = socket.getLocalPort()
            openPorts.add(portNum)
        }
        // close all the sockets so caller can actually use them :v
        for (socket in sockets) {
            socket.close()
        }
        //
        return openPorts
    }

    @Throws(IOException::class)
    fun GetOpenPort(): Integer {
        return GetOpenPorts(1)[0]
    }
}