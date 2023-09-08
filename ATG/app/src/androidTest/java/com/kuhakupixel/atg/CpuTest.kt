package com.kuhakupixel.atg

import org.junit.Assert.assertNotEquals

/**
 * Instrumented test, which will execute on an Android device.
 *
 * @see [Testing documentation](http://d.android.com/tools/testing)
 */
@RunWith(AndroidJUnit4::class)
class CpuTest {
    @Test
    @Throws(IOException::class)
    fun GetArch() {

        // make sure the current cpu is in supported list
        val cpuArch: Cpu.Arch = Cpu.GetArch()
        assertNotEquals(cpuArch, null)
        assertNotEquals(cpuArch, Cpu.Arch.unknown)
    }
}