package com.kuhakupixel.atg.backend

import java.io.BufferedReader

object Cpu {
    val archStrToArchMap: Map<String, Arch> = object : HashMap<String?, Arch?>() {
        init {
            // all possible values from `uname -m`
            put("x86", Arch.x86)
            put("i686", Arch.x86)
            put("x86_64", Arch.x86_64)
            put("aarch64", Arch.arm64)
        }
    }

    /*
     * get cpu's architecture by using `uname -m` command
     * https://unix.stackexchange.com/questions/12453/how-to-determine-linux-kernel-architecture
     * */
    @Throws(IOException::class)
    fun GetArch(): Arch? {
        val proc: Process = Runtime.getRuntime().exec("uname -m")
        val stdInput = BufferedReader(InputStreamReader(proc.getInputStream()))
        // Read the output from the command
        val out: ArrayList<String> = ArrayList<String>()
        var s: String?
        while (stdInput.readLine().also { s = it } != null) {
            out.add(s)
        }
        assert(out.size() === 1)
        //
        val arch_str: String = out.get(0)
        return if (archStrToArchMap.containsKey(arch_str)) archStrToArchMap[arch_str] else Arch.unknown
    }

    enum class Arch {
        x86, x86_64, arm32, arm64, unknown
    }
}