package com.kuhakupixel.atg.backend;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class Cpu {

    public enum Arch {
        x86, x86_64, arm32, arm64, unknown
    }

    public static final Map<String,Arch> archStrToArchMap = new HashMap<String,Arch>(){{
        // all possible values from `uname -m`
        put("x86",Arch.x86);
        put("i686",Arch.x86);
        put("x86_64",Arch.x86_64);
        put("aarch64",Arch.arm64);
    }};

    /*
     * get cpu's architecture by using `uname -m` command
     * https://unix.stackexchange.com/questions/12453/how-to-determine-linux-kernel-architecture
     * */
    public static Arch GetArch() throws IOException {
        Process proc = Runtime.getRuntime().exec("uname -m");
        BufferedReader stdInput = new BufferedReader(new
                InputStreamReader(proc.getInputStream()));
// Read the output from the command

        ArrayList<String> out = new ArrayList<String>();
        String s;
        while ((s = stdInput.readLine()) != null) {
            out.add(s);
        }
        // the command should only output the arch and nothing else
        assert (out.size() == 1);
        //
        String arch_str = out.get(0);
        if (archStrToArchMap.containsKey(arch_str))
            return archStrToArchMap.get(arch_str);
        else
            return Arch.unknown;

    }
}
