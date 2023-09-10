package com.kuhakupixel.atg

import android.content.Context
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import com.kuhakupixel.atg.backend.Binary
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith
import org.apache.commons.lang3.StringUtils

/**
 * Instrumented test, which will execute on an Android device.
 *
 * @see [Testing documentation](http://d.android.com/tools/testing)
 */
@RunWith(AndroidJUnit4::class)
class BinaryTest {
    @Test
    
    fun GetBinPath() {
        val context: Context = InstrumentationRegistry.getInstrumentation().getTargetContext()
        var path = ""
        path = Binary.GetBinPath(context, Binary.Type.server)
        Assert.assertFalse(org.apache.commons.lang3.StringUtils.isEmpty(path))
        path = Binary.GetBinPath(context, Binary.Type.utilClient)
        Assert.assertFalse(StringUtils.isEmpty(path))
    }
}