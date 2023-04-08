package com.java.atg;

import android.util.Log;

import androidx.test.ext.junit.runners.AndroidJUnit4;

import org.junit.Test;
import org.junit.*;
import org.junit.runner.RunWith;

import java.io.IOException;

/**
 * Instrumented test, which will execute on an Android device.
 *
 * @see <a href="http://d.android.com/tools/testing">Testing documentation</a>
 */
@RunWith(AndroidJUnit4.class)
public class ACEServerClientTest {

    @Test
    public void GetReply() throws IOException {
        ACEServer.Start();
        System.out.println("Waiting for server to start");
        // =================

        ACEClient client = new ACEClient();
        String reply = client.Request("attached");
        Assert.assertEquals("attached_ok", reply);


    }
}