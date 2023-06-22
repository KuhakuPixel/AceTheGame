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

    public List<String> RequestAsList(String requestCmd) throws InvalidCommandException {

        String[] cmdArr = new String[]{"--port", this.port.toString(), "--msg", requestCmd};
        return super.RequestAsList(cmdArr);

    }

    public String Request(String requestCmd) throws InvalidCommandException {
        String outStr = String.join("\n", this.RequestAsList(requestCmd));
        return outStr;

    }

}

