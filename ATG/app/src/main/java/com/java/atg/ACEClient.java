package com.java.atg;

import com.topjohnwu.superuser.Shell;

import org.zeromq.SocketType;
import org.zeromq.ZContext;
import org.zeromq.ZMQ;

import java.io.IOException;
import java.util.List;

public class ACEClient {

    String binaryPath = "";
    Integer port;

    public ACEClient(Integer port) throws IOException {
        this.binaryPath = Binary.GetBinPath(Binary.Type.client);
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

}

