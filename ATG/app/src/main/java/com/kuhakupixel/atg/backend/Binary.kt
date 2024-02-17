package com.kuhakupixel.atg.backend

import android.content.Context

import com.google.common.collect.BiMap
import com.google.common.collect.HashBiMap

/*
* class to get the binary included in ATG app
* */
object Binary {
    val binaryNameToFileNameMap: HashMap<Type?, String?> = object : HashMap<Type?, String?>() {
        init {
            put(Type.utilClient, "util_client")
            put(Type.server, "ACE")
        }
    }
    val cpuArchEnumToDirNameMap: BiMap<Cpu.Arch, String> = HashBiMap.create()

    init {
        cpuArchEnumToDirNameMap.put(Cpu.Arch.x86, "x86")
        cpuArchEnumToDirNameMap.put(Cpu.Arch.x86_64, "x86_64")
        cpuArchEnumToDirNameMap.put(Cpu.Arch.arm32, "armeabi-v7a")
        cpuArchEnumToDirNameMap.put(Cpu.Arch.arm64, "arm64-v8a")
    }

    fun GetBinPath(context: Context, type: Type, arch: Cpu.Arch?): String {
        val archDirName = cpuArchEnumToDirNameMap[arch]
        val fileName = binaryNameToFileNameMap[type]
        val assetPathBinStr: String = String.format("bin/ACE/%s/%s", archDirName, fileName)
        System.out.printf("Getting binary at %s\n", assetPathBinStr)
        return Asset.CopyAssetToExecutableDir(context, assetPathBinStr)
    }

    /**
     * Get executable binary's path
     *
     *
     * This function will copy the binary to a temporary directory
     * so multiple call to this is no good
     */
    fun GetBinPath(context: Context, type: Type): String {
        return GetBinPath(context, type, Cpu.GetArch())
    }

    enum class Type {
        server, utilClient
    }
}