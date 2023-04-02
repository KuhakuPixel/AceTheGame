package com.java.atg;

import android.content.Context;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.zeromq.SocketType;
import org.zeromq.ZContext;
import org.zeromq.ZMQ;

public class ACE {

    public static final Map<Cpu.Arch, String> CpuArchEnumToDirNameMap = new HashMap<Cpu.Arch, String>() {
        {
            put(Cpu.Arch.x86, "x86");
            put(Cpu.Arch.x86_64, "x86_64");
            put(Cpu.Arch.arm32, "armeabi-v7a");
            put(Cpu.Arch.arm64, "arm64-v8a");

        }
    };

    public static String GetBinPath(Cpu.Arch arch) throws IOException {
        String archDirName = CpuArchEnumToDirNameMap.get(arch);
        String assetPathBinStr = String.format("bin/ACE/%s/ACE", archDirName);
        System.out.printf("Getting binary at %s\n", assetPathBinStr);
        return Asset.CopyAssetToExecutableDir(assetPathBinStr);

    }

    /**
     * Get executable binary's path
     * <p>
     * This function will copy the binary to a temporary directory
     * so multiple call to this is no good
     */
    public static String GetBinPath() throws IOException {
        return GetBinPath(Cpu.GetArch());
    }

}
