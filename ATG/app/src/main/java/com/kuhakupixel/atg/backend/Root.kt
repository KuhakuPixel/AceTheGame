package com.kuhakupixel.atg.backend

import org.apache.commons.lang3.ArrayUtils
import java.io.BufferedReader
import java.io.IOException
import java.io.InputStreamReader

object Root {
    /*
     * Run [strings] as sudo
     * credits: https://stackoverflow.com/a/26654728/14073678
     * */
    fun sudo(cmd: List<String>): List<String> {
        val res: MutableList<String> = mutableListOf()
        try {
            val fullCmd: MutableList<String> = mutableListOf("su", "--command")
            fullCmd.addAll(res)
            //
            val su: Process = Runtime.getRuntime().exec(fullCmd.toTypedArray())
            val stdInput = BufferedReader(InputStreamReader(su.getInputStream()))
            val stdError = BufferedReader(InputStreamReader(su.getErrorStream()))
            var s: String
            while (stdInput.readLine().also { s = it } != null) res.add(s)
            while (stdError.readLine().also { s = it } != null) res.add(s)
        } catch (e: IOException) {
            e.printStackTrace()
        }
        return res
    }
}