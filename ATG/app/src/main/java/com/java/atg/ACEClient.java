package com.java.atg;

import com.topjohnwu.superuser.Shell;

import org.zeromq.SocketType;
import org.zeromq.ZContext;
import org.zeromq.ZMQ;

import java.io.IOException;
import java.util.List;

public class ACEClient {

    String binaryPath = "";

    public ACEClient() throws IOException {
        this.binaryPath = Binary.GetBinPath(Binary.Type.client);
    }

    public String Request(String requestCmd) throws InterruptedException {

        // wrap it inside quotes just in case
        // that [requestCmd] contains space
        requestCmd = String.format("\"%s\"", requestCmd);
        String[] cmdArr = new String[]{this.binaryPath, "--msg", requestCmd};
        String cmdStr = String.join(" ", cmdArr);
        System.out.printf("running %s\n", cmdStr);
        // build another shell
        Shell.Builder shellBuilder = Shell.Builder.create();
        Shell sh = shellBuilder.build();
        //
        Shell.Result result = sh.cmd(cmdStr).exec();
        List<String> out = result.getOut();
        String outStr = String.join("\n", out);
        return outStr;


    }

}

