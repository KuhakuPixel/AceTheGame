/*
 * add additional functionally on top of apktool's aapt manager
 * */
package modder

import brut.util.AaptManager
import org.apache.commons.lang3.StringUtils
import java.io.File
import java.util.*

class Aapt {
    companion object {
        fun RunCmd(args: List<String>): List<String> {
            var output: List<String> = ArrayList()
            val aaptFile: File
            // get aapt
            aaptFile = AaptManager.getAapt1()
            output = Util.RunCommand(aaptFile.absolutePath, args)
            return output
        }


        fun DumpBadging(apkPath: String): List<String> {
            Assert.AssertExistAndIsFile(File(apkPath))
            val apkPathArg = String.format("%s", apkPath)
            return RunCmd(Arrays.asList("dump", "badging", apkPathArg))
        }


        fun GetLaunchableActivity(apkPath: String): String {
            var launchableActivity = ""
            val out = DumpBadging(apkPath)
            for (i in out.indices) {
                // found a launchable activity
                // ussually the output is like
                //
                // (in one line)
                // ```
                // launchable-activity: name='com.java.simpleapp.MainActivity' label='SimpleApp'
                // icon=''
                // ```
                if (out[i].startsWith("launchable-activity:")) {
                    // try to parse the output and get the activity
                    val matchedStr = StringUtils.substringsBetween(out[i], "name='", "'")
                    assert(matchedStr.size == 1)
                    launchableActivity = matchedStr[0]
                    break
                }
            }
            return launchableActivity
        }

        fun GetManifest(apkPath: String): List<String> {
            // https://stackoverflow.com/a/28464940/14073678
            val output: List<String> = RunCmd(Arrays.asList("d", "xmltree", apkPath, "AndroidManifest.xml"))
            return output
        }

        fun _GetManifestExtractNativeLibValue(line: String): Boolean {
            /**
            line will look like "android:extractNativeLibs(0x010104ea)=(type 0x12)0x0"
             */
            val rightVal: String = line.split("=")[1]
            // remove the "(type 0x12)"
            val value: String = rightVal.split(")")[1]
            if (value == "0x0")
                return false
            else
                return true

        }

        /**
         * return null if android:extractNativeLibs doesn't exist
         * */
        fun GetManifestExtractNativeLibValue(apkPath: String): Boolean? {
            val manifest: List<String> = GetManifest(apkPath)
            for (line in manifest) {
                if (line.contains("android:extractNativeLibs"))
                    return _GetManifestExtractNativeLibValue(line = line)

            }
            return null;

        }
    }
}
