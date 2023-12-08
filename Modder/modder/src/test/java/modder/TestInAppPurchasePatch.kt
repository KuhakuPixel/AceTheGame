package modder

import apktool.kotlin.lib.Apktool
import org.junit.jupiter.api.Assertions
import org.junit.jupiter.api.Test
import java.io.File

class TestInAppPurchasePatch {
    //
    var classLoader = javaClass.classLoader

    fun assertIsPatched(apktool: Apktool){

        // ============================ before patch ============================
        val billingClientEntryFile: File? = InAppPurchaseUtil.findBillingClientEntryFile(apktool)
        Assertions.assertNotNull(billingClientEntryFile)

        val originalFileContent = billingClientEntryFile!!.readText()
        val originalManifestFileContent = apktool.manifestFile.readText()

        Assertions.assertFalse(originalManifestFileContent.contains(InAppPurchaseUtil.PERMISSION_QUERY_ALL_PACKAGE))

        Assertions.assertTrue(originalFileContent.contains(InAppPurchaseUtil.ORIGINAL_PACKAGE_NAME))
        Assertions.assertTrue(originalFileContent.contains(InAppPurchaseUtil.ORIGINAL_SERVICE_TO_CONNECT_TO_NAME))
        Assertions.assertFalse(originalFileContent.contains(InAppPurchaseUtil.BILLING_HACK_PACKAGE_NAME))
        Assertions.assertFalse(originalFileContent.contains(InAppPurchaseUtil.BILLING_HACK_SERVICE_TO_CONNECT_TO_NAME))

        // patch
        InAppPurchaseUtil.patchApk(apktool)
        // ============================ after patch ============================
        // make sure manifest and smali code are patched
        val newManifestFileContent = apktool.manifestFile.readText()
        Assertions.assertTrue(newManifestFileContent.contains(InAppPurchaseUtil.PERMISSION_QUERY_ALL_PACKAGE))

        val patchedFileContent: String = billingClientEntryFile.readText()
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
                decodeResource = true,
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
                decodeResource = true,
        ).use {
            assertIsPatched(it)
        }

    }
}