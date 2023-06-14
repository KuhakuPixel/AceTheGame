package com.kuhakupixel.atg.backend;

import android.content.Context;

import java.io.IOException;

public class ACEUtilClient extends ACEBaseClient {

    public ACEUtilClient(Context context, Integer port) throws IOException {
        super(context, port, Binary.Type.utilClient);
    }

}

