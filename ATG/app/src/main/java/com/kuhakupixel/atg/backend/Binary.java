package com.kuhakupixel.atg.backend;

import android.content.Context;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/*
* class to get the binary included in ATG app
* */
public class Binary {

    public enum Type {
        server,
        attachClient,
        utilClient,
    }

    public static final Map<Type, String> binaryNameToFileNameMap = new HashMap<Type, String>() {
        {
            put(Type.attachClient, "ACE_attach_client");
            put(Type.utilClient, "ACE_util_client");
            put(Type.server, "ACE");

        }
    };
    public static final Map<Cpu.Arch, String> cpuArchEnumToDirNameMap = new HashMap<Cpu.Arch, String>() {
        {
            put(Cpu.Arch.x86, "x86");
            put(Cpu.Arch.x86_64, "x86_64");
            put(Cpu.Arch.arm32, "armeabi-v7a");
            put(Cpu.Arch.arm64, "arm64-v8a");

        }
    };

    public static String GetBinPath(Context context, Binary.Type type, Cpu.Arch arch) throws IOException {
        String archDirName = cpuArchEnumToDirNameMap.get(arch);
        String fileName = binaryNameToFileNameMap.get(type);
        String assetPathBinStr = String.format("bin/ACE/%s/%s", archDirName, fileName);
        System.out.printf("Getting binary at %s\n", assetPathBinStr);
        return Asset.CopyAssetToExecutableDir(context, assetPathBinStr);

    }

    /**
     * Get executable binary's path
     * <p>
     * This function will copy the binary to a temporary directory
     * so multiple call to this is no good
     */
    public static String GetBinPath(Context context, Binary.Type type) throws IOException {
        return GetBinPath(context, type, Cpu.GetArch());
    }

}
