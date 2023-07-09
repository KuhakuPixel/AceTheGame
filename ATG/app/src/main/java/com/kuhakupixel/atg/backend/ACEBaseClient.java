package com.kuhakupixel.atg.backend;

import android.util.Log;

import java.util.List;

public abstract class ACEBaseClient {

    public static class InvalidCommandException extends RuntimeException {
        public InvalidCommandException(String msg) {
            super(msg);
        }
    }

    public ACEBaseClient() {
    }

    public static void AssertValidCommand(List<String> out) throws InvalidCommandException {
        if (out.size() > 0) {
            if (out.get(0).equals("INVALID_COMMAND"))
                throw new InvalidCommandException("Invalid Command: " + String.join("\n", out));
        }
    }

    /**
     * specify how to send the command and get the output
     * */
    public abstract List<String> SendCommand(String[] requestCmd);

    public List<String> RequestAsList(String[] requestCmd) throws InvalidCommandException {

        Log.i("ATG", String.format("Command to Engine: \"%s\"", String.join(" ", requestCmd)));
        // run command
        List<String> out = SendCommand(requestCmd);
        AssertValidCommand(out);
        Log.i("ATG", String.format("Output received from engine command: \"%s\"", String.join(" ", requestCmd)));
        return out;

    }

    public String Request(String[] requestCmd) throws InvalidCommandException {

        String outStr = String.join("\n", RequestAsList(requestCmd));
        return outStr;

    }

}

