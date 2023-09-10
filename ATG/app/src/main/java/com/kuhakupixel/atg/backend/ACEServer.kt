package com.kuhakupixel.atg.backend

import android.content.Context
import android.util.Log
import com.topjohnwu.superuser.Shell
import java.io.File

object ACEServer {
    /*
     * Get thread to start the server
     * */
    fun GetStarterThread(
        context: Context,
        pid: Long,
        portNum: Int,
        statusPublisherPort: Int
    ): Thread {
        return Thread {
            Log.i("ATG", String.format("Running engine server at port %d", portNum))
            var path = ""
            path = Binary.GetBinPath(context, Binary.Type.server)
            assert(File(path).exists())
            System.out.println("Binary path is $path")
            val cmds = arrayOf(
                path,
                "attach-pid",
                pid.toString(),
                "--port",
                portNum.toString(),
                "--status_publisher_port",
                statusPublisherPort.toString()
            )
            val cmd_string: String = cmds.joinToString(separator = " ")
            Log.i("ATG", String.format("Running command %s\n", cmd_string))
            val res: Shell.Result = Shell.cmd(cmd_string).exec()
            // add output
            val output: MutableList<String> = mutableListOf()
            output.addAll(res.getOut())
            output.addAll(res.getErr())
            // print
            Log.i("ATG", output.joinToString(separator = "\n"))
        }
    }
}