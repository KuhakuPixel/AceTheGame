package com.kuhakupixel.atg

import androidx.test.ext.junit.runners.AndroidJUnit4
import com.kuhakupixel.atg.backend.Port
import org.junit.Assert
import org.junit.Assert.assertNotEquals
import org.junit.Test
import org.junit.runner.RunWith

/**
 * Instrumented test, which will execute on an Android device.
 *
 * @see [Testing documentation](http://d.android.com/tools/testing)
 */
@RunWith(AndroidJUnit4::class)
class PortTest {
    @Test
    
    fun GetOpenPorts() {
        Assert.assertEquals(0, Port.GetOpenPorts(0).size)
        Assert.assertEquals(1, Port.GetOpenPorts(1).size)
        Assert.assertEquals(2, Port.GetOpenPorts(2).size)
    }
}