package com.kuhakupixel.atg

import androidx.test.ext.junit.runners.AndroidJUnit4
import com.kuhakupixel.atg.backend.Cpu
import org.junit.Assert.assertNotEquals
import org.junit.Test
import org.junit.runner.RunWith

/**
 * Instrumented test, which will execute on an Android device.
 *
 * @see [Testing documentation](http://d.android.com/tools/testing)
 */
@RunWith(AndroidJUnit4::class)
class CpuTest {
    @Test
    
    fun GetArch() {

        // make sure the current cpu is in supported list
        val cpuArch: Cpu.Arch? = Cpu.GetArch()
        assertNotEquals(cpuArch, null)
        assertNotEquals(cpuArch, Cpu.Arch.unknown)
    }
}