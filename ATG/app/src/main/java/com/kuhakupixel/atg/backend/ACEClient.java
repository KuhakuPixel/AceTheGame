package com.kuhakupixel.atg.backend;

import android.content.Context;

import com.topjohnwu.superuser.Shell;

import java.io.IOException;
import java.util.List;

public class ACEClient {

    String binaryPath = "";
    Integer port;

    public ACEClient(Context context, Integer port) throws IOException {
        this.binaryPath = Binary.GetBinPath(context, Binary.Type.client);
        this.port = port;
    }

    public String Request(String requestCmd) {

        // wrap it inside quotes just in case
        // that [requestCmd] contains space
        requestCmd = String.format("\"%s\"", requestCmd);
        String[] cmdArr = new String[]{this.binaryPath, "--port", this.port.toString(), "--msg", requestCmd};
        String cmdStr = String.join(" ", cmdArr);
        System.out.printf("running %s\n", cmdStr);
        // run command
        Shell.Result result = Shell.cmd(cmdStr).exec();
        List<String> out = result.getOut();
        String outStr = String.join("\n", out);
        return outStr;

    }

    public List<String> MainCmdAsList(String requestCmd) {

        // need to use "main" because its the subcommand for Main Command
        String[] cmdArr = new String[]{this.binaryPath, "main", requestCmd};
        String cmdStr = String.join(" ", cmdArr);
        // run command
        Shell.Result result = Shell.cmd(cmdStr).exec();
        List<String> out = result.getOut();
        return out;

    }
    public String MainCmd(String requestCmd){
        List<String> out = MainCmdAsList(requestCmd);
        String outStr = String.join("\n", out);
        return outStr;
    }

}

