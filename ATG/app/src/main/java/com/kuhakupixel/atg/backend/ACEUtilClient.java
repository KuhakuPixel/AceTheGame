package com.kuhakupixel.atg.backend;

import android.content.Context;

import org.apache.commons.lang3.ArrayUtils;

import java.io.IOException;
import java.util.List;

public class ACEUtilClient extends ACEBaseClient {

    final String utilClientBinPath;

    public ACEUtilClient(Context context) throws IOException {
        super();
        this.utilClientBinPath = Binary.GetBinPath(context, Binary.Type.utilClient);
    }

    @Override
    public List<String> SendCommand(String[] requestCmd) {
        String[] cmdArr = ArrayUtils.addAll(new String[]{this.utilClientBinPath}, requestCmd);
        // run command
        List<String> out = Root.sudo(cmdArr);
        return out;
    }
}

