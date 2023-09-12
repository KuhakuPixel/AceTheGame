package com.kuhakupixel.atg.backend

import java.net.ServerSocket

object Port {
    
    fun GetOpenPorts(portCount: Int): List<Int> {
        val sockets: MutableList<ServerSocket> = mutableListOf()
        val openPorts: MutableList<Int> = mutableListOf()
        for (i in 0 until portCount) {
            // if we pass 0, a port number will be automatically allocated
            // https://docs.oracle.com/javase/7/docs/api/java/net/ServerSocket.html#ServerSocket%28int%29
            val socket = ServerSocket(0)
            sockets.add(socket)
            val portNum: Int = socket.getLocalPort()
            openPorts.add(portNum)
        }
        // close all the sockets so caller can actually use them :v
        for (socket in sockets) {
            socket.close()
        }
        //
        return openPorts
    }

    
    fun GetOpenPort(): Int {
        return GetOpenPorts(1)[0]
    }
}