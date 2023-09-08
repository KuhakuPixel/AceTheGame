package com.kuhakupixel.atg

import org.junit.Assert.assertNotEquals

/**
 * Instrumented test, which will execute on an Android device.
 *
 * @see [Testing documentation](http://d.android.com/tools/testing)
 */
@RunWith(AndroidJUnit4::class)
class PortTest {
    @Test
    @Throws(IOException::class)
    fun GetOpenPorts() {
        Assert.assertEquals(0, Port.GetOpenPorts(0).size())
        Assert.assertEquals(1, Port.GetOpenPorts(1).size())
        Assert.assertEquals(2, Port.GetOpenPorts(2).size())
    }
}