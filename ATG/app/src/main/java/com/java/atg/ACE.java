package com.java.atg;

import android.util.Log;

import com.topjohnwu.superuser.Shell;

import java.io.File;
import java.io.IOException;
import java.io.UncheckedIOException;
import java.util.HashMap;
import java.util.List;
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

    public static Thread RunServer() throws IOException {

        Thread thread = new Thread(

                () -> {
                    Log.i("ATG", "Running Binary");
                    // sele RobolectricTestRunner seems to run only under arm device
                    String path = "";
                    try {
                        path = ACE.GetBinPath();
                    }
                    catch(IOException e){
                        throw new UncheckedIOException(e);
                    }
                    assert (new File(path).exists());
                    System.out.println("Binary path is " + path);
                    String[] cmds = new String[]{path, "--attach-self"};
                    String cmd_string = String.join(" ", cmds);
                    Shell.Result result;
                    // Execute commands synchronously
                    System.out.printf("Running command %s\n", cmd_string);
                    result = Shell.cmd(cmd_string).exec();
                    List<String> out = result.getOut();
                    System.out.println("Output of binary: ");
                    System.out.println(String.join("\n", out));
                }

        );
        thread.start();
        return thread;
    }

}
