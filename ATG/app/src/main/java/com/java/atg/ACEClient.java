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
        System.out.println("Done getting binary");
    }

    public String Request(String requestCmd) throws InterruptedException {

        // wrap it inside quotes just in case
        // that [requestCmd] contains space
        requestCmd = String.format("\"%s\"", requestCmd);
        String[] cmdArr = new String[]{this.binaryPath, "--msg", requestCmd};
        //String[] cmdArr = new String[]{"echo", "hello world"};
        String cmdStr = String.join(" ", cmdArr);
        System.out.printf("running %s\n", cmdStr);
        // build another shell
        Shell.Builder shellBuilder = Shell.Builder.create();
        Shell sh = shellBuilder.build();
        //
        Shell.Result result = sh.cmd(cmdStr).exec();
        List<String> out = result.getOut();
        System.out.println("Output of binary: ");
        String outStr = String.join("\n", out);
        System.out.println(outStr);
        return outStr;


    }

}

