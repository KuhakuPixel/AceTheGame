package com.kuhakupixel.atg;

import static org.junit.Assert.assertNotEquals;

import androidx.test.ext.junit.runners.AndroidJUnit4;

import com.kuhakupixel.atg.backend.Cpu;
import com.kuhakupixel.atg.backend.Port;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;

import java.io.IOException;
import java.util.List;

/**
 * Instrumented test, which will execute on an Android device.
 *
 * @see <a href="http://d.android.com/tools/testing">Testing documentation</a>
 */
@RunWith(AndroidJUnit4.class)
public class PortTest {

    @Test
    public void GetOpenPorts() throws IOException {
        Assert.assertEquals(0, Port.GetOpenPorts(0).size());
        Assert.assertEquals(1, Port.GetOpenPorts(1).size());
        Assert.assertEquals(2, Port.GetOpenPorts(2).size());

    }
}