package com.kuhakupixel.atg.backend

import java.io.BufferedReader
import java.io.InputStreamReader

object Cpu {
    val archStrToArchMap: HashMap<String?, Arch?> = object : HashMap<String?, Arch?>() {
        init {
            // all possible values from `uname -m`
            put("x86", Arch.x86)
            put("i686", Arch.x86)
            put("x86_64", Arch.x86_64)
            put("aarch64", Arch.arm64)
            put("armv8l", Arch.arm32)
        }
    }

    /*
     * get cpu's architecture by using `uname -m` command
     * https://unix.stackexchange.com/questions/12453/how-to-determine-linux-kernel-architecture
     * */
    fun GetArch(): Arch? {
        val out: List<String> = Cmd.RunCommand(listOf("uname", "-m"))
        assert(out.size === 1)
        //
        val arch_str: String = out.get(0)
        return if (archStrToArchMap.containsKey(arch_str)) archStrToArchMap[arch_str] else Arch.unknown
    }

    enum class Arch {
        x86, x86_64, arm32, arm64, unknown
    }
}
