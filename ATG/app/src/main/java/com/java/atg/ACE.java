package com.java.atg;

import android.content.Context;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.io.FileUtils;
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
        Context context = ATG.GetContext();
        // get the input stream to binary for this specific [arch]
        String archDirName = CpuArchEnumToDirNameMap.get(arch);
        String pathBinStr = String.format("bin/ACE/%s/ACE", archDirName);
        InputStream inputStream = context.getAssets().open(pathBinStr);
        assert(inputStream != null);
        // create temp folder and file
        File tempDir = context.getCacheDir();
        File ace_engine_prog = File.createTempFile("ACE","",tempDir);
        FileUtils.copyInputStreamToFile(inputStream,ace_engine_prog);

        // set this file as executable to make sure we can run it
        if (!ace_engine_prog.setExecutable(true)) {
            String errMsg = String.format("Cannot set %s as executable", ace_engine_prog.getAbsolutePath());
            throw new IOException(errMsg);
        }
        //
        return ace_engine_prog.getAbsolutePath();

    }

    /**
     * Get executable binary's path
     *
     * This function will copy the binary to a temporary directory
     * so multiple call to this is no good
     * */
    public static String GetBinPath() throws IOException {
        return GetBinPath(Cpu.GetArch());
    }

}
