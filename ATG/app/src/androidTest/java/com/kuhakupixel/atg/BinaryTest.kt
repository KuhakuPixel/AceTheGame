package com.kuhakupixel.atg

import android.content.Context

/**
 * Instrumented test, which will execute on an Android device.
 *
 * @see [Testing documentation](http://d.android.com/tools/testing)
 */
@RunWith(AndroidJUnit4::class)
class BinaryTest {
    @Test
    @Throws(IOException::class)
    fun GetBinPath() {
        val context: Context = InstrumentationRegistry.getInstrumentation().getTargetContext()
        var path = ""
        path = Binary.GetBinPath(context, Binary.Type.server)
        Assert.assertFalse(StringUtils.isEmpty(path))
        path = Binary.GetBinPath(context, Binary.Type.utilClient)
        Assert.assertFalse(StringUtils.isEmpty(path))
    }
}