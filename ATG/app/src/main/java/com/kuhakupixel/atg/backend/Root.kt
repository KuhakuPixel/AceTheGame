package com.kuhakupixel.atg.backend

import org.apache.commons.lang3.ArrayUtils

object Root {
    /*
     * Run [strings] as sudo
     * credits: https://stackoverflow.com/a/26654728/14073678
     * */
    fun sudo(cmd: Array<String?>?): List<String> {
        val res: List<String> = ArrayList<String>()
        try {
            val fullCmd: Array<String> = ArrayUtils.addAll(arrayOf<String>("su", "--command"), cmd)
            val su: Process = Runtime.getRuntime().exec(fullCmd)
            val stdInput = BufferedReader(InputStreamReader(su.getInputStream()))
            val stdError = BufferedReader(InputStreamReader(su.getErrorStream()))
            var s: String?
            while (stdInput.readLine().also { s = it } != null) res.add(s)
            while (stdError.readLine().also { s = it } != null) res.add(s)
        } catch (e: IOException) {
            e.printStackTrace()
        }
        return res
    }
}