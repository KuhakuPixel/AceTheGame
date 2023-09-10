package com.kuhakupixel.atg.backend

import java.lang.reflect.Field

object ProcUtil {
    /*
    * get pid of process using reflection
    * there is Process.pid() in java 9
    * */
    @Synchronized
    fun GetPid(process: Process): Long {
        var pid: Long = -1
        try {
            if (process.javaClass.getName().equals("java.lang.UNIXProcess")) {
                val f: Field = process.javaClass.getDeclaredField("pid")
                f.setAccessible(true)
                pid = f.getLong(process)
                f.setAccessible(false)
            }
        } catch (e: Exception) {
        }
        return pid
    }

    /**
     * run a program that does nothing,
     * this function is only for testing
     * return: created process
     */
    
    fun RunBusyProgram(): Process {

        // command that do nothing and runs forever
        // https://unix.stackexchange.com/a/42905/505340
        val cmd = "tail -f /dev/null"
        return Runtime.getRuntime().exec(cmd)
    }
}