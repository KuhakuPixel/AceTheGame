package com.kuhakupixel.atg.backend;

import android.util.Log;

import com.google.gson.Gson;

import org.zeromq.SocketType;
import org.zeromq.ZContext;
import org.zeromq.ZMQ;

import java.io.Closeable;
import java.io.IOException;

public class ACEStatusSubscriber implements Closeable {

    ZContext context = new ZContext();
    ZMQ.Socket subscriber = context.createSocket(SocketType.SUB);
    Gson gson = new Gson();

    public ACEStatusSubscriber(Integer port) throws InterruptedException {
        subscriber.connect(String.format("tcp://localhost:%d", port));
        subscriber.subscribe("");
    }

    public String GetMsg() {
        // trim to remove tailing '0' characters
        return subscriber.recvStr(0).trim();
    }

    public ScanProgressData GetScanProgress() {

        ScanProgressData scanProgressData = new ScanProgressData(0, 0, false);
        try {
            String scanProgress = GetMsg();
            scanProgressData = gson.fromJson(scanProgress, ScanProgressData.class);
        } catch (Exception e) {
            Log.e("ATG", e.getMessage());

        }
        return scanProgressData;
    }


    @Override
    public void close() throws IOException {
        context.close();

    }
}
