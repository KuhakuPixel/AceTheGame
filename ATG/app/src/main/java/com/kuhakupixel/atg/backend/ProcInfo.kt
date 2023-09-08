package com.kuhakupixel.atg.backend

import kotlin.Throws
import Shell.Result
import kotlin.jvm.Synchronized

/*
 * info about process
 * */
class ProcInfo(pidAndNameStr: String) {
    private var pidStr = ""
    private var name = ""

    /*
     * [pidAndNameStr]: pid and name separated by space
     *
     * */
    init {
        val splitted: Array<String> = pidAndNameStr.split(" ", 2)
        assert(2 == splitted.size)
        pidStr = splitted[0]
        name = splitted[1]
    }

    fun GetPidStr(): String {
        return pidStr
    }

    fun GetName(): String {
        return name
    }
}