package com.kuhakupixel.atg;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;

import androidx.test.ext.junit.runners.AndroidJUnit4;

import com.kuhakupixel.atg.backend.Cpu;

import org.junit.Test;
import org.junit.runner.RunWith;

import java.io.IOException;

/**
 * Instrumented test, which will execute on an Android device.
 *
 * @see <a href="http://d.android.com/tools/testing">Testing documentation</a>
 */
@RunWith(AndroidJUnit4.class)
public class CpuTest {

    @Test
    public void GetArch() throws IOException {

        // make sure the current cpu is in supported list
        Cpu.Arch cpuArch = Cpu.GetArch();
        assertNotEquals(cpuArch, null);
        assertNotEquals(cpuArch, Cpu.Arch.unknown);
    }
}