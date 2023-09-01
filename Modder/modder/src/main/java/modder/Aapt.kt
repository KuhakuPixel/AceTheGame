/*
 * add additional functionally on top of apktool's aapt manager
 * */
package modder

import brut.common.BrutException
import brut.util.AaptManager
import org.apache.commons.lang3.StringUtils
import java.io.*
import java.util.*

object Aapt {
    fun RunCmd(args: List<String>): List<String> {
        var output: List<String> = ArrayList()
        val aaptFile: File
        // get aapt
        aaptFile = try {
            AaptManager.getAapt1()
        } catch (e: BrutException) {
            System.out.printf("%s\n", e.message)
            return output
        }
        output = Util.RunCommand(aaptFile.absolutePath, args)
        return output
    }

    @Throws(IOException::class)
    fun DumpBadging(apkPath: String): List<String> {
        Assert.AssertExistAndIsFile(File(apkPath))
        val apkPathArg = String.format("%s", apkPath)
        return RunCmd(Arrays.asList("dump", "badging", apkPathArg))
    }

    @JvmStatic
	@Throws(IOException::class)
    fun GetLaunchableActivity(apkPath: String): String {
        var launchableActivity = ""
        val out = DumpBadging(apkPath)
        for (i in out!!.indices) {
            // found a launchable activity
            // ussually the output is like
            //
            // (in one line)
            // ```
            // launchable-activity: name='com.java.simpleapp.MainActivity' label='SimpleApp'
            // icon=''
            // ```
            if (out[i]!!.startsWith("launchable-activity:")) {
                // try to parse the output and get the activity
                val matchedStr = StringUtils.substringsBetween(out[i], "name='", "'")
                assert(matchedStr.size == 1)
                launchableActivity = matchedStr[0]
                break
            }
        }
        return launchableActivity
    }
}
