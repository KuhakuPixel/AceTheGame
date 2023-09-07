package modder

import modder.Resource.Companion.GetFile
import org.junit.jupiter.api.Assertions
import org.junit.jupiter.api.Test
import java.io.IOException

internal class TestAapt {
    // https://stackoverflow.com/a/43415602/14073678
    var classLoader = javaClass.classLoader
    var apk1_Path = GetFile(classLoader, "apk_example/app-debug.apk")
    var apk2_Path = GetFile(classLoader, "apk_example/with space/app-debug.apk")

    @Test
    fun RunBasicCmd() {
        var output: List<String> = ArrayList()

        // should contains basic info about aapt when run with --help
        output = Aapt.RunCmd(mutableListOf<String>("--help"))
        Assertions.assertEquals(true, output.contains("Subcommands:"))
        Assertions.assertEquals(true, output.contains("Options:"))
    }

    @Test
    @Throws(IOException::class)
    fun GetLaunchableActivity() {
        run {


            // just in case
            Assertions.assertEquals(true, apk1_Path.exists())
            val launchableActivity = Aapt.GetLaunchableActivity(apk1_Path.absolutePath)
            Assertions.assertEquals("com.java.simpleapp.MainActivity", launchableActivity)
        }
        run {
            // just in case
            Assertions.assertEquals(true, apk2_Path.exists())
            val launchableActivity = Aapt.GetLaunchableActivity(apk2_Path.absolutePath)
            Assertions.assertEquals("com.java.simpleapp.MainActivity", launchableActivity)
        }
    }

    @Test
    fun GetManifest() {
        val manifest: String = Aapt.GetManifest(apk1_Path.absolutePath).joinToString(separator = "\n")
        Assertions.assertTrue(manifest.contains("A: http://schemas.android.com/apk/res/android:extractNativeLibs(0x010104ea)=false"))
        Assertions.assertTrue(manifest.contains("A: package=\"com.java.simpleapp\" (Raw: \"com.java.simpleapp\")"))

    }

    @Test
    fun _GetManifestExtractNativeLibValue() {
        Assertions.assertFalse(
                Aapt._GetManifestExtractNativeLibValue(line = "A: http://schemas.android.com/apk/res/android:extractNativeLibs(0x010104ea)=false")
        )

        Assertions.assertFalse(
                Aapt._GetManifestExtractNativeLibValue(line = "A: http://schemas.android.com/apk/res/android:extractNativeLibs(0x011114ea)=false")
        )

        Assertions.assertTrue(
                Aapt._GetManifestExtractNativeLibValue(line = "A: http://schemas.android.com/apk/res/android:extractNativeLibs(0x011114ea)=true")
        )

        Assertions.assertTrue(
                Aapt._GetManifestExtractNativeLibValue(line = "A: http://schemas.android.com/apk/res/android:extractNativeLibs(0x010104ea)=true")
        )
    }

    @Test
    fun GetManifestExtractNativeLibValue() {
        // [apk1_Path]'s extractNativeLib has been set to true
        Assertions.assertEquals(false, Aapt.GetManifestExtractNativeLibValue(apk1_Path.absolutePath))
        // [apk2_Path] doesn't contain extractNativeLib
        Assertions.assertEquals(null, Aapt.GetManifestExtractNativeLibValue(apk2_Path.absolutePath))
    }

}
