package com.kuhakupixel.atg

import android.content.Context
import android.content.res.AssetManager
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import com.kuhakupixel.atg.backend.Asset
import org.apache.commons.io.IOUtils
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith
import java.io.FileInputStream
import java.io.InputStream

/**
 * Instrumented test, which will execute on an Android device.
 *
 * @see [Testing documentation](http://d.android.com/tools/testing)
 */
@RunWith(AndroidJUnit4::class)
class AssetTest {
    @Test
    
    fun CopyAssetToExecutableDir() {
        //
        val pathBin = "bin/ACE/arm64-v8a/ACE"
        val context: Context = InstrumentationRegistry.getInstrumentation().getTargetContext()
        val assetManager: AssetManager = context.getAssets()
        val expectedInputStream: InputStream = assetManager.open(pathBin)
        //
        val pathToCopiedStr: String = Asset.CopyAssetToExecutableDir(context, pathBin)
        val actualInputStream: InputStream = FileInputStream(pathToCopiedStr)
        Assert.assertTrue(IOUtils.contentEquals(expectedInputStream, actualInputStream))
    }
}