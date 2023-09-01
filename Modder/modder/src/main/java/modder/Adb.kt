/* 
 * wrapper for running adb command
*/
package modder

import java.io.*
import java.util.*

class Adb {
    enum class Error {
        ok,
        no_connection
    }

    inner class Output {
        var strings: List<String> = ArrayList()
        var error = Error.ok
    }

    fun Run(command: List<String>): Output {
        val out: Output = Output()

        // test if adb shell can be connected by echoing in
        // the shell and check the output
        out.strings = Util.RunCommand("adb", mutableListOf<String>("shell", "echo", "test"))
        if (out.strings.size >= 1) {
            if (out.strings.get(0) != "test") out.error = Error.no_connection
        } else {
            out.error = Error.no_connection
        }

        // shell is alive, execute shell command
        if (out.error == Error.ok) {
            out.strings = Util.RunCommand("adb", command)
        }
        return out
    }

    /*
     * Run a command inside adb shell
     * before running [command], it will check if the shell can
     * be connected by trying to run "echo test" and check its output
     * 
     * 
     */
    fun RunShell(shellArg: List<String>): Output {
        val commands: MutableList<String> = ArrayList()
        //
        commands.add("shell")
        for (s in shellArg) commands.add(s)
        return Run(commands)
    }

    fun ListApk(): Output {
        val out = RunShell(mutableListOf<String>("pm", "list", "packages"))
        if (out.error != Error.ok) {
            return out
        }
        val apks: MutableList<String> = ArrayList()
        // output will look like
        // package:com.android.offfice
        // package:com.vivo.appstore
        // "package:" should be trimmed for better view
        for (i in out.strings!!.indices) {
            // use the caret symbol '^'
            // to match the beggining of the pattern
            val new_str = out.strings!![i]!!.replaceFirst("^package:".toRegex(), "")
            apks.add(new_str)
        }
        out.strings = apks
        return out
    }

    fun GetApkPathAtDevice(package_name: String): Output {
        val out = RunShell(Arrays.asList("pm", "path", package_name))
        if (out.error != Error.ok) {
            return out
        }
        val apks_paths: MutableList<String> = ArrayList()
        // output will look like
        // package:/system/app/name
        // package:/system/test/clashroyale
        // "package:" should be trimmed
        for (i in out.strings!!.indices) {
            // use the caret symbol '^'
            // to match the beggining of the pattern
            val new_str = out.strings!![i]!!.replaceFirst("^package:".toRegex(), "")
            apks_paths.add(new_str)
        }
        out.strings = apks_paths
        return out
    }

    fun DownloadApk(path_to_apk: String, downloadDir: String): Output {
        val out = Run(Arrays.asList("pull", path_to_apk, downloadDir))
        return if (out.error != Error.ok) {
            out
        } else out
    }

    @Throws(IOException::class)
    fun InstallApk(apkDirStr: String): Output {
        val apkDir = File(apkDirStr)
        Assert.AssertExistAndIsDirectory(apkDir)
        val command: MutableList<String> = ArrayList()
        // use install-multiple to install one or more apk
        // https://android.stackexchange.com/questions/221204/how-to-install-xapk-apks-or-multiple-apks-via-adb
        command.add("install-multiple")
        for (f in apkDir.listFiles()) {
            // only collect file that has extension of *.apk
            if (f.absolutePath.endsWith(".apk")) command.add(f.absolutePath)
        }
        return Run(command)
    }
}
