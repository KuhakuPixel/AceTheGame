package com.java.atg;

import static org.junit.Assert.*;

import org.junit.Test;

import java.io.IOException;

/**
 * Example local unit test, which will execute on the development machine (host).
 *
 * @see <a href="http://d.android.com/tools/testing">Testing documentation</a>
 */
public class CpuTest {
    @Test
    public void GetArch() throws IOException {

        // make sure the current cpu is in supported list
        Cpu.Arch cpuArch = Cpu.GetArch();
        assertNotEquals(cpuArch, null);
        assertNotEquals(cpuArch, Cpu.Arch.unknown);
    }
}