package com.kuhakupixel.atg.backend;

import android.content.Context;

import java.io.IOException;
import java.util.List;

public class ACEAttachClient extends ACEBaseClient {

    Integer port;

    public ACEAttachClient(Context context, Integer port) throws IOException {
        super(context, Binary.Type.attachClient);
        this.port = port;
    }

    public List<String> RequestAsList(String[] requestCmd) throws InvalidCommandException {

        // here we surround the command for `--msg` with quote
        // so Runtime.exec will treat it as one full string argument to --msg
        String msgCmdStr = String.format("\"%s\"", String.join(" ", requestCmd));
        String[] cmdArr = new String[]{"--port", this.port.toString(), "--msg", msgCmdStr};
        return super.RequestAsList(cmdArr);

    }

    public String Request(String[] requestCmd) throws InvalidCommandException {
        String outStr = String.join("\n", this.RequestAsList(requestCmd));
        return outStr;

    }

}

