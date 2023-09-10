package com.kuhakupixel.atg.backend

import java.io.BufferedReader
import java.io.IOException
import java.io.InputStreamReader

object Root {
    /*
     * Run [strings] as sudo
     * credits: https://stackoverflow.com/a/26654728/14073678
     * */
    fun sudo(cmd: List<String>): List<String> {
        var res: List<String> = listOf()
        try {
            val fullCmd: MutableList<String> = mutableListOf("su", "--command")
            fullCmd.addAll(cmd)
            //
            res = Cmd.RunCommand(fullCmd)
        } catch (e: IOException) {
            e.printStackTrace()
        }
        return res
    }
}