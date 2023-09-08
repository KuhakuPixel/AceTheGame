package com.kuhakupixel.atg

import android.content.Context

/**
 * Instrumented test, which will execute on an Android device.
 *
 * @see [Testing documentation](http://d.android.com/tools/testing)
 */
@RunWith(AndroidJUnit4::class)
class AssetTest {
    @Test
    @Throws(IOException::class)
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