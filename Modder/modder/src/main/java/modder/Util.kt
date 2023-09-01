/* 
 * Common utilities 
*/
package modder

import java.io.BufferedReader
import java.io.IOException
import java.io.InputStreamReader

object Util {
    @JvmStatic
	fun <T> ArrayConcat(a: Array<T>?, b: Array<T>?): Array<T?>? {
        if (a == null || b == null) return null
        // allocate enough space for both a and b
        val combined = a.copyOf(a.size + b.size)
        //
        val destPos = a.size
        System.arraycopy(b, 0, combined, destPos, b.size)
        return combined
    }

    @JvmStatic
	fun DoesCommandExist(command: String?): Boolean {

        // try to run command with arguments --helps,
        // because most of program when given the argument will print help
        // and exit immediately if it exist
        val procBuilder = ProcessBuilder(command, "--help")
        return try {
            procBuilder.start()
            true
        } catch (e: IOException) {
            // thrown when command doesn't exist
            false
        }
    }

    fun RunCommand(command: String?, args: List<String?>): List<String> {
        // add first the main command name
        // and the rest of the args
        val commands: MutableList<String?> = ArrayList()
        commands.add(command)
        for (s in args) commands.add(s)

        //
        val procOutput: MutableList<String> = ArrayList()
        val procBuilder = ProcessBuilder(commands)
        procBuilder.redirectErrorStream(true)
        return try {
            val proc = procBuilder.start()
            val bufferedReader = BufferedReader(
                    InputStreamReader(proc.inputStream))
            var outLine: String?
            // take all output
            while (true) {
                outLine = bufferedReader.readLine()
                if (outLine == null) break
                procOutput.add(outLine)
            }
            procOutput
        } catch (e: IOException) {
            // thrown when command doesn't exist
            procOutput
        }
    }
}
