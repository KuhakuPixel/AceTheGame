package com.java.atg;

import static org.junit.Assert.assertEquals;

import android.content.Context;

import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.platform.app.InstrumentationRegistry;

import org.junit.Test;
import org.junit.runner.RunWith;

import java.io.IOException;

/**
 * Instrumented test, which will execute on an Android device.
 *
 * @see <a href="http://d.android.com/tools/testing">Testing documentation</a>
 */
@RunWith(AndroidJUnit4.class)
public class BinaryTest {

    @Test
    public void GetBinPath() throws IOException {
        String path = "";
        path = Binary.GetBinPath(Binary.Type.server);
        assert (path != "");

        path = Binary.GetBinPath(Binary.Type.client);
        assert (path != "");
    }
}