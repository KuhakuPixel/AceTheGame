package modder

import apktool.kotlin.lib.Apktool
import org.junit.jupiter.api.Assertions
import org.junit.jupiter.api.Test
import java.io.File

class TestInAppPurchasePatch {
    //
    var classLoader = javaClass.classLoader

    fun assertIsPatched(apktool: Apktool){

        val billingClientEntryFile: File? = InAppPurchaseUtil.findBillingClientEntryFile(apktool)
        Assertions.assertNotNull(billingClientEntryFile)

        val originalFileContent = billingClientEntryFile!!.readText()
        Assertions.assertTrue(originalFileContent.contains(InAppPurchaseUtil.ORIGINAL_PACKAGE_NAME))
        Assertions.assertTrue(originalFileContent.contains(InAppPurchaseUtil.ORIGINAL_SERVICE_TO_CONNECT_TO_NAME))
        Assertions.assertFalse(originalFileContent.contains(InAppPurchaseUtil.BILLING_HACK_PACKAGE_NAME))
        Assertions.assertFalse(originalFileContent.contains(InAppPurchaseUtil.BILLING_HACK_SERVICE_TO_CONNECT_TO_NAME))

        val patchedFileContent: String = InAppPurchaseUtil.patchStringContent(originalFileContent)

        Assertions.assertTrue(patchedFileContent.contains(InAppPurchaseUtil.BILLING_HACK_PACKAGE_NAME))
        Assertions.assertTrue(patchedFileContent.contains(InAppPurchaseUtil.BILLING_HACK_SERVICE_TO_CONNECT_TO_NAME))
        Assertions.assertFalse(patchedFileContent.contains(InAppPurchaseUtil.ORIGINAL_PACKAGE_NAME))
        Assertions.assertFalse(patchedFileContent.contains(InAppPurchaseUtil.ORIGINAL_SERVICE_TO_CONNECT_TO_NAME))

    }
    // https://stackoverflow.com/a/43415602/14073678
    @Test
    fun TestPatchHillClimbRacing() {

        val testApkPathStr = classLoader.getResource("apk_example/games/HillClimbRacing.apk").file.toString()
        Apktool(
                apkFile = testApkPathStr,
                decodeResource = false,
        ).use {
            assertIsPatched(it)
        }

    }

    // https://stackoverflow.com/a/43415602/14073678
    @Test
    fun TestPatchBeatTheBoss3() {

        val testApkPathStr = classLoader.getResource("apk_example/games/BeatTheBoss3.apk").file.toString()
        Apktool(
                apkFile = testApkPathStr,
                decodeResource = false,
        ).use {
            assertIsPatched(it)
        }

    }
}