package com.kuhakupixel.atg.backend
import java.io.IOException
object Root {
    /*
     * Run [strings] as sudo
     * credits: https://stackoverflow.com/a/26654728/14073678
     * */
    fun sudo(cmd: List<String>): List<String> {
        var res: List<String> = listOf()
        try {
            val fullCmd: MutableList<String> = mutableListOf("su", "--command")
            // add [cmd] as only one string because we want to pass it as one value
            // to `--command` parameter. Runtime.getRuntime().exec() will surround each string
            // with ("") that will cause [cmd] to be thought as different value from `--command`
            // if we just append [fullCmd] and [cmd]

            // example: if [cmd] is ["/usr/bin/echo", "hi"]
            // if we only append [fullCmd] and [cmd]
            // like [fullCmd] = ["su", "--command","/usr/bin/echo", "hi"]
            // the value "hi" will be thought as part of [su] command instead of [/usr/bin/echo]
            // the correct one should be
            // [fullCmd] = ["su", "--command","/usr/bin/echo hi"]
            fullCmd.add(cmd.joinToString(separator = " "))
            //
            res = Cmd.RunCommand(fullCmd)
        } catch (e: IOException) {
            e.printStackTrace()
        }
        return res
    }
}