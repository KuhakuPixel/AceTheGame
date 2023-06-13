package com.kuhakupixel.atg;

import static org.junit.Assert.assertEquals;

import android.content.Context;

import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.platform.app.InstrumentationRegistry;

import com.kuhakupixel.atg.backend.Binary;

import org.apache.commons.lang3.StringUtils;
import org.junit.Assert;
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
        Context context = InstrumentationRegistry.getInstrumentation().getTargetContext();
        String path = "";

        path = Binary.GetBinPath(context, Binary.Type.server);
        Assert.assertFalse(StringUtils.isEmpty(path));

        path = Binary.GetBinPath(context, Binary.Type.attachClient);
        Assert.assertFalse(StringUtils.isEmpty(path));
    }
}