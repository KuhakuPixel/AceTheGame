package com.java.atg;

import android.content.Context;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

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
        String archDir = CpuArchEnumToDirNameMap.get(arch);
        Context context = ATG.GetContext();
        InputStream inputStream = context.getAssets().open("bin/ACE/x86/ACE");
        assert(inputStream != null);

        return archDir;

    }
    public static String GetBinPath() throws IOException {
        return GetBinPath(Cpu.GetArch());

    }

}
