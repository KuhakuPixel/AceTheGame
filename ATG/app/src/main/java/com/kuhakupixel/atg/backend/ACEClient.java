package com.kuhakupixel.atg.backend;

import android.content.Context;

import com.topjohnwu.superuser.Shell;

import java.io.IOException;
import java.util.List;

public class ACEClient {

    public class InvalidCommandException extends RuntimeException {

        public InvalidCommandException() {
            super();
        }

        public InvalidCommandException(String msg) {
            super(msg);
        }
    }

    String binaryPath = "";
    Integer port;

    public ACEClient(Context context, Integer port) throws IOException {
        this.binaryPath = Binary.GetBinPath(context, Binary.Type.client);
        this.port = port;
    }

    public void AssertValidCommand(List<String> out) throws InvalidCommandException {
        if (out.size() > 0) {
            if (out.get(0).equals("INVALID_COMMAND"))
                throw new InvalidCommandException("Invalid Command: " + String.join("\n", out));
        }
    }

    public List<String> RequestAsList(String requestCmd) throws InvalidCommandException {

        // wrap it inside quotes just in case
        // that [requestCmd] contains space
        requestCmd = String.format("\"%s\"", requestCmd);
        String[] cmdArr = new String[]{this.binaryPath, "--port", this.port.toString(), "--msg", requestCmd};
        String cmdStr = String.join(" ", cmdArr);
        System.out.printf("running %s\n", cmdStr);
        // run command
        Shell.Result result = Shell.cmd(cmdStr).exec();
        List<String> out = result.getOut();
        AssertValidCommand(out);
        return out;

    }

    public String Request(String requestCmd) throws InvalidCommandException {

        String outStr = String.join("\n", RequestAsList(requestCmd));
        return outStr;

    }

    public List<String> MainCmdAsList(String requestCmd) throws InvalidCommandException {

        // need to use "main" because its the subcommand for Main Command
        String[] cmdArr = new String[]{this.binaryPath, "main", requestCmd};
        String cmdStr = String.join(" ", cmdArr);
        // run command
        Shell.Result result = Shell.cmd(cmdStr).exec();
        List<String> out = result.getOut();
        AssertValidCommand(out);
        return out;

    }

    public String MainCmd(String requestCmd) {
        List<String> out = MainCmdAsList(requestCmd);
        String outStr = String.join("\n", out);
        return outStr;
    }

}

