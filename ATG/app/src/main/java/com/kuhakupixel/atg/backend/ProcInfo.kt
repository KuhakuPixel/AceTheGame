package com.kuhakupixel.atg.backend

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
        val splitted: List<String> = pidAndNameStr.split(" ", limit = 2)
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