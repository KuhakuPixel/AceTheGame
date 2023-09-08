package com.kuhakupixel.atg.backend

import android.content.Context

object ACEServer {
    /*
     * Get thread to start the server
     * */
    @Throws(IOException::class)
    fun GetStarterThread(context: Context, pid: Long, portNum: Integer, statusPublisherPort: Integer): Thread {
        return Thread {
            Log.i("ATG", String.format("Running engine server at port %d", portNum))
            var path = ""
            path = try {
                Binary.GetBinPath(context, Binary.Type.server)
            } catch (e: IOException) {
                throw UncheckedIOException(e)
            }
            assert(File(path).exists())
            System.out.println("Binary path is $path")
            val cmds = arrayOf(path, "attach-pid", pid.toString(), "--port", portNum.toString(), "--status_publisher_port", statusPublisherPort.toString())
            val cmd_string: String = String.join(" ", cmds)
            Log.i("ATG", String.format("Running command %s\n", cmd_string))
            val res: Result = Shell.cmd(cmd_string).exec()
            val output: List<String> = ArrayList<String>(res.getOut())
            output.addAll(res.getErr())
            Log.i("ATG", String.join("\n", output))
        }
    }
}