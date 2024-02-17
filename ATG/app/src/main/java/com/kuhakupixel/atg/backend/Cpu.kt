package com.kuhakupixel.atg.backend

import android.os.Build
import java.io.BufferedReader
import java.io.InputStreamReader

object Cpu {

    /*
     * get cpu's architecture by using `uname -m` command
     * https://unix.stackexchange.com/questions/12453/how-to-determine-linux-kernel-architecture
     * */
    fun GetArch(): Arch? {

        //https://stackoverflow.com/questions/6630386/how-to-find-arm-processor-version-on-android-device
        val out: List<String> = Cmd.RunCommand(listOf("getprop", "ro.product.cpu.abi"))
        assert(out.size == 1)
        //
        val arch_str: String = out.get(0)
        if (Binary.cpuArchEnumToDirNameMap.inverse().containsKey(arch_str))
            return Binary.cpuArchEnumToDirNameMap.inverse()[arch_str]
        else
            return Arch.unknown
    }

    enum class Arch {
        x86, x86_64, arm32, arm64, unknown
    }
}
