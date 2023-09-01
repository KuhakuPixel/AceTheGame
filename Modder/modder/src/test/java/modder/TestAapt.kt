package modder

import modder.Aapt.GetLaunchableActivity
import modder.Aapt.RunCmd
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
        output = RunCmd(mutableListOf<String>("--help"))
        Assertions.assertEquals(true, output.contains("Android Asset Packaging Tool"))
        Assertions.assertEquals(true, output.contains("Usage:"))
    }

    @Test
    @Throws(IOException::class)
    fun GetLaunchableActivity() {
        run {


            // just in case
            Assertions.assertEquals(true, apk1_Path.exists())
            val launchableActivity = GetLaunchableActivity(apk1_Path.absolutePath)
            Assertions.assertEquals("com.java.simpleapp.MainActivity", launchableActivity)
        }
        run {

            // just in case
            Assertions.assertEquals(true, apk2_Path.exists())
            val launchableActivity = GetLaunchableActivity(apk2_Path.absolutePath)
            Assertions.assertEquals("com.java.simpleapp.MainActivity", launchableActivity)
        }
    }
}
