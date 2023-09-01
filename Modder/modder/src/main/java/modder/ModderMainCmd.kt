package modder

import org.apache.commons.io.FileUtils
import picocli.CommandLine
import picocli.CommandLine.Model.CommandSpec
import picocli.CommandLine.Spec
import java.io.*
import java.util.function.Consumer

@CommandLine.Command(name = "Modder", subcommands = [CommandLine.HelpCommand::class], description = ["Utilities for hacking android apk"])
class ModderMainCmd {
    @Spec
    var spec: CommandSpec? = null
    val DECOMPILED_DIR_EXT = ".decompiled"
    val RECOMPILED_DIR_EXT = ".recompiled"
    fun ShowAdbShellError(out: Adb.Output) {
        println("can't connect to adb shell:")
        out!!.strings!!.forEach(Consumer { s: String -> println(s) })
    }

    @CommandLine.Command(name = "listApk", description = ["List installed apks"])
    fun ListApk() {
        val adb = Adb()
        val out = adb.ListApk()
        if (out!!.error != Adb.Error.ok) {
            ShowAdbShellError(out)
            return
        }
        // output will look like
        // package:com.android.offfice
        // package:com.vivo.appstore
        // "package:" should be trimmed for better view
        for (i in out.strings!!.indices) {
            // use the caret symbol '^'
            // to match the beggining of the pattern
            val new_str = out.strings!![i]!!.replaceFirst("^package:".toRegex(), "")
            System.out.printf("%d %s\n", i, new_str)
        }
        System.out.printf("Found %d packages\n", out.strings!!.size)
    }

    @CommandLine.Command(name = "apkInfo", description = ["information about apk"])
    @Throws(IOException::class)
    fun ApkInfo(
            @CommandLine.Parameters(paramLabel = "apkPath", description = ["path to apk"]) apkPathStr: String
    ) {
        val output = Aapt.DumpBadging(apkPathStr)
        output!!.forEach(Consumer { x: String -> println(x) })
    }

    /*
     *
     * for decompilation and recompilation output directory
     * we have to pass the path to a File object first
     * and then use toString, to make sure the path doesn't contain '/'
     *
     * if the output Folder from user contains '/'
     * then the output will not be put in the same directory as
     * apk folder or decompiled apk folder because
     *
     * ussualy an output for decompilation and recompilation are
     * "[apkDir]+ApkMod.DECOMPILED_DIR_EXT" or
     * "[decompiledApkDir]+ApkMod.RECOMPILED_DIR_EXT"
     * so the output will be put inside [apkDir] or [decompiledApkDir]
     * as .decompiled or .recompiled
     *
     */
    @CommandLine.Command(name = "decompile", description = ["Decompile an apk"])
    fun Decompile(
            @CommandLine.Parameters(paramLabel = "ApkFilePath", description = ["Path to apk file or a directory containing apks"]) apkPathStr: String
    ) {
        val apkDir = File(apkPathStr)
        ApkMod.Decompile(apkPathStr, apkDir.toString() + ApkMod.DECOMPILED_DIR_EXT)
    }

    @CommandLine.Command(name = "recompile", description = ["recompile apks"])
    fun Recompile(
            @CommandLine.Parameters(paramLabel = "decompiledFolder", description = ["Folder to decompiled apks"]) decompiledFolderStr: String
    ) {
        val decompiledApkDir = File(decompiledFolderStr)
        ApkMod.Recompile(decompiledFolderStr, decompiledApkDir.toString() + ApkMod.RECOMPILED_DIR_EXT)
    }

    @CommandLine.Command(name = "Patch", description = ["recompile apks"])
    @Throws(IOException::class)
    fun Patch(
            @CommandLine.Parameters(paramLabel = "ApkFolderPath", description = ["Path to directory containing apks"]) apkDirStr: String
    ) {

        // check if the directory exist
        val apkSrcDir = File(apkDirStr)
        Assert.AssertExistAndIsDirectory(apkSrcDir)
        // copy apk folder so we don't write to the original one
        val patchedApkDir = File(apkSrcDir.absolutePath + ".patched")
        FileUtils.copyDirectory(apkSrcDir, patchedApkDir)
        // get the base apk for patching
        val baseApkFile = File(patchedApkDir.absolutePath, Patcher.Companion.BASE_APK_FILE_NAME)
        Assert.AssertExistAndIsFile(baseApkFile)
        // ========== add patch ===========================
        val patcher = Patcher(baseApkFile.absolutePath)
        patcher.AddMemScanner()
        // fix [INSTALL_FAILED_INVALID_APK: Failed to extract native libraries, res=-2] after recompile
        // https://github.com/iBotPeaches/Apktool/issues/1626
        patcher.RemoveExtractNativeLibOptions()
        // ================== export ===================
        // String patchedApkPath = baseApkFile.getAbsolutePath() + "-patched.apk";
        val patchedApkPath = baseApkFile.absolutePath
        patcher.Export(patchedApkPath)

        // ============ sign all the apk in the directory ==========
        val files = patchedApkDir.listFiles()
        for (f in files) {
            if (f.isFile) ApkSigner.Sign(f)
        }
        System.out.printf("exported apk to %s\n", patchedApkPath)
    }

    /*
     * Download apk from device specified by [package_name]
     * and put it in a folder with the same name as [package_name]
     */
    @CommandLine.Command(name = "download", description = ["Download an apk from device"])
    fun Download(
            @CommandLine.Parameters(paramLabel = "packageName", description = ["Package to download"]) package_name: String
    ) {
        // if folder with name [package_name] exist
        // then remove it and recreate an empty one
        val downloadFile = File(package_name)
        if (downloadFile.exists() && downloadFile.isDirectory) {
            try {
                System.out.printf("directory %s exist, removing it...\n", package_name)
                FileUtils.deleteDirectory(downloadFile)
            } catch (e: IOException) {
                System.out.printf("Error while deleting directory \n")
                println(e.message)
            }
        }
        // create dir for storing downloaded apk
        File(package_name).mkdirs()
        System.out.printf("created directory %s for storing downloaded apk\n", package_name)

        //
        val adb = Adb()
        // check if [package_name] exists
        var out = adb.ListApk()
        if (out!!.error != Adb.Error.ok) {
            ShowAdbShellError(out)
            return
        }
        if (!out.strings!!.contains(package_name)) {
            System.out.printf("package %s doesn't exist in the device\n", package_name)
            println("use listApk command to list installed packages")
            return
        }
        out = adb.GetApkPathAtDevice(package_name)
        if (out.error != Adb.Error.ok) {
            ShowAdbShellError(out)
            return
        }
        // we need to loop when downloading the app
        // in case the apk is splitted apks (have multiple paths)
        println("Downloading apks ...")
        for (i in out.strings!!.indices) {
            val apkPath = out.strings!![i]
            System.out.printf("Downloading apk (%d/%d) at %s", i + 1, out.strings!!.size, apkPath)
            val downloadOut = adb.DownloadApk(apkPath, package_name)
            if (downloadOut!!.error != Adb.Error.ok) {
                ShowAdbShellError(out)
                return
            }
            downloadOut.strings!!.forEach(Consumer { x: String -> println(x) })
            System.out.printf("...done\n")
        }
    }

    /*
     * Download apk from device specified by [package_name]
     * and put it in a folder with the same name as [package_name]
     */
    @CommandLine.Command(name = "install", description = ["install all apk in a folder"])
    @Throws(IOException::class)
    fun Install(
            @CommandLine.Parameters(paramLabel = "apkDir", description = ["Directory that contains apk"]) apkDirStr: String
    ) {
        val adb = Adb()
        val out = adb.InstallApk(apkDirStr)
        out!!.strings!!.forEach(Consumer { x: String -> println(x) })
    }
}
