package com.kuhakupixel.atg.backend

import org.apache.commons.lang3.StringUtils
import org.zeromq.SocketType
import org.zeromq.ZContext
import org.zeromq.ZMQ
import java.io.Closeable

class ACEAttachClient(port: Int) : ACEBaseClient(), Closeable {
    private val context: ZContext = ZContext()
    private val socket: ZMQ.Socket

    init {
        socket = context.createSocket(SocketType.REQ)
        // need to do networking stuff on new thread to avoid
        // Network on main thread exception
        // https://stackoverflow.com/a/14443056/14073678
        val th = Thread { socket.connect(String.format("tcp://localhost:%d", port)) }
        th.start()
        th.join()
    }

    @Override
    override fun SendCommand(requestCmd: Array<String>): List<String> {
        val requestCmdStr: String = requestCmd.joinToString(separator = " ")
        socket.send(requestCmdStr.toByteArray(ZMQ.CHARSET), 0)
        val reply: ByteArray = socket.recv(0)
        val outStr = String(reply, ZMQ.CHARSET)
        return if (StringUtils.isEmpty(outStr)) {
            ArrayList<String>()
        } else {
            outStr.split("\n")
        }
    }

    override fun close() {
        context.close()
    }
}