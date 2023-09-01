/* 
 * Common utilities 
*/
package modder

import java.io.BufferedReader
import java.io.IOException
import java.io.InputStreamReader

class Util {
    companion object {
        fun <T> ArrayConcat(a: Array<T>?, b: Array<T>?): Array<T?>? {
            if (a == null || b == null) return null
            // allocate enough space for both a and b
            val combined = a.copyOf(a.size + b.size)
            //
            val destPos = a.size
            System.arraycopy(b, 0, combined, destPos, b.size)
            return combined
        }

        
        fun DoesCommandExist(command: String): Boolean {

            // try to run command with arguments --helps,
            // because most of program when given the argument will print help
            // and exit immediately if it exist
            val procBuilder = ProcessBuilder(command, "--help")
            try {
                procBuilder.start()
                return true
            } catch (e: IOException) {
                // thrown when command doesn't exist
                return false
            }
        }

        fun RunCommand(command: String, args: List<String>): List<String> {
            // add first the main command name
            // and the rest of the args
            val commands: MutableList<String> = ArrayList()
            commands.add(command)
            for (s in args) commands.add(s)

            //
            val procOutput: MutableList<String> = ArrayList()
            val procBuilder = ProcessBuilder(commands)
            procBuilder.redirectErrorStream(true)
            try {
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
                return procOutput
            } catch (e: IOException) {

                // thrown when command doesn't exist
                return procOutput
            }
        }
    }
}
