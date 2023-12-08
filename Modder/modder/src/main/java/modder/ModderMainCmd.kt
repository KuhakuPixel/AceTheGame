package modder

import apktool.kotlin.lib.ApkSigner
import org.apache.commons.io.FileUtils
import org.apache.commons.io.FilenameUtils
import picocli.CommandLine
import picocli.CommandLine.Model.CommandSpec
import picocli.CommandLine.Spec
import java.io.File
import java.util.function.Consumer

@CommandLine.Command(name = "Modder", subcommands = [CommandLine.HelpCommand::class], description = ["Utilities for hacking android apk"])
class ModderMainCmd {
    @Spec
    var spec: CommandSpec? = null
    val DECOMPILED_DIR_EXT = ".decompiled"
    val RECOMPILED_DIR_EXT = ".recompiled"
    fun ShowAdbShellError(out: Adb.Output) {
        println("can't connect to adb shell:")
        out.strings.forEach(Consumer { s: String -> println(s) })
    }

    @CommandLine.Command(name = "listApk", description = ["List installed apks"])
    fun ListApk() {

        val adb = Adb()
        val out = adb.ListApk()
        if (out.error != Adb.Error.ok) {
            ShowAdbShellError(out)
            return
        }
        // output will look like
        // package:com.android.offfice
        // package:com.vivo.appstore
        // "package:" should be trimmed for better view
        for (i in out.strings.indices) {
            // use the caret symbol '^'
            // to match the beggining of the pattern
            val new_str = out.strings[i].replaceFirst("^package:".toRegex(), "")
            System.out.printf("%d %s\n", i, new_str)
        }
        System.out.printf("Found %d packages\n", out.strings.size)
    }

    @CommandLine.Command(name = "apkInfo", description = ["information about apk"])

    fun ApkInfo(
            @CommandLine.Parameters(paramLabel = "apkPath", description = ["path to apk"]) apkPathStr: String
    ) {
        val output = Aapt.DumpBadging(apkPathStr)
        output.forEach(Consumer { x: String -> println(x) })
    }

    @CommandLine.Command(name = "manifest", description = ["get  manifest of apk"])

    fun Manifest(
            @CommandLine.Parameters(paramLabel = "apkPath", description = ["path to apk"]) apkPathStr: String
    ) {
        val output: List<String> = Aapt.GetManifest(apkPathStr)
        println(output.joinToString(separator = "\n"))
    }


    @CommandLine.Command(name = "Patch", description = ["recompile apks"])

    fun Patch(
            @CommandLine.Parameters(paramLabel = "ApkFolderPath", description = ["Path to directory containing apks"])
            apkDirStr: String,

            @CommandLine.Option(names = ["-m", "--mem-editor"], description = ["enable memory scanning or editing for non rooted"])
            addMemEditor: Boolean = false,
            @CommandLine.Option(names = ["-i", "--in-app-purchase"], description = ["unlock in app purchase"])
            addInAppPurchaseHack: Boolean = false,

            @CommandLine.Option(names = ["-c", "--keep-decompilation-folder"], description = ["don't clean decompilation folder (useful for debugging)"])
            keepDecompilationFolder: Boolean
    ) {

        // check if the directory exist
        val apkSrcDir = File(apkDirStr)
        Assert.AssertExistAndIsDirectory(apkSrcDir)
        // copy apk folder so we don't write to the original one
        val patchedApkDir = File(apkSrcDir.absolutePath + ".patched")
        FileUtils.copyDirectory(apkSrcDir, patchedApkDir)
        // get the base apk for patching
        val baseApkFile = File(patchedApkDir.absolutePath, Patcher.BASE_APK_FILE_NAME)
        Assert.AssertExistAndIsFile(baseApkFile)
        // ============= check the existance of extractNativeLibs=false in AndroidManifest.xml =======
        /*
        * adding native libs to /libs folder with  [Patcher.AddMemScanner]
        * will throw [INSTALL_FAILED_INVALID_APK: Failed to extract native libraries, res=-2]
        * during install if extractNativeLibs == false
        *
        * so either remove it so it will be set to its default value (true)
        * https://github.com/iBotPeaches/Apktool/issues/1626
        * */
        val extractNativeLibsOption: Boolean? = Aapt.GetManifestExtractNativeLibValue(apkPath = baseApkFile.absolutePath)
        // ========== add patch ===========================
        val patcher = Patcher(
                baseApkFile.absolutePath,
                // need to decode resource to modify AndroidManifest.xml
                // when extractNativeLibsOption == false or when we are patching for in app purchase hack, because
                // we need to add permission android.permission.QUERY_ALL_PACKAGES
                // otherwise don't decode to make compilation recompilation faster
                decodeResource = (extractNativeLibsOption == false) || addInAppPurchaseHack,
                cleanDecompilationOnExit = !keepDecompilationFolder,
        )

        if (addMemEditor) {
            if (extractNativeLibsOption == false) {
                println("extractNativeLibsOptions is set to false, attempting to remove them")
                patcher.RemoveExtractNativeLibOptions()
                println("extractNativeLibsOptions removed")
            }
            // add mem scanner
            patcher.AddMemScanner()
        }
        if (addInAppPurchaseHack) {
            patcher.AddSupportForFreeInAppPurchases()
        }
        // ================== export ===================
        // String patchedApkPath = baseApkFile.getAbsolutePath() + "-patched.apk";
        val patchedApkPath = baseApkFile.absolutePath
        patcher.Export(patchedApkPath)

        // ============ sign all the apk in the directory ==========
        val files = patchedApkDir.listFiles()
        for (f in files) {
            if (f.isFile) ApkSigner.sign(f)
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
            System.out.printf("directory %s exist, removing it...\n", package_name)
            FileUtils.deleteDirectory(downloadFile)
        }
        // create dir for storing downloaded apk
        File(package_name).mkdirs()
        System.out.printf("created directory %s for storing downloaded apk\n", package_name)

        //
        val adb = Adb()
        // check if [package_name] exists
        var out = adb.ListApk()
        if (out.error != Adb.Error.ok) {
            ShowAdbShellError(out)
            return
        }
        if (!out.strings.contains(package_name)) {
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
        for (i in out.strings.indices) {
            val apkPath = out.strings[i]
            System.out.printf("Downloading apk (%d/%d) at %s", i + 1, out.strings.size, apkPath)
            val downloadOut = adb.DownloadApk(apkPath, package_name)
            if (downloadOut.error != Adb.Error.ok) {
                ShowAdbShellError(out)
                return
            }
            downloadOut.strings.forEach(Consumer { x: String -> println(x) })
            System.out.printf("...done\n")
        }
    }

    /*
     * Download apk from device specified by [package_name]
     * and put it in a folder with the same name as [package_name]
     */
    @CommandLine.Command(name = "install", description = ["install all apk in a folder"])

    fun Install(
            @CommandLine.Parameters(paramLabel = "apkDir", description = ["Directory that contains apk"]) apkDirStr: String
    ) {
        val adb = Adb()
        val out = adb.InstallApk(apkDirStr)
        out.strings.forEach(Consumer { x: String -> println(x) })
    }

    @CommandLine.Command(name = "sign", description = ["sign an apk"])
    fun Sign(
            @CommandLine.Parameters(paramLabel = "ApkFilePath", description = ["Apk File Path"])
            apkFilePaths: MutableList<File>
    ) {
        for (apkFile in apkFilePaths) {
            if (FilenameUtils.getExtension(apkFile.absolutePath) == "apk") {
                println("Signing " + apkFile.absolutePath)
                Assert.AssertExistAndIsFile(apkFile)
                ApkSigner.sign(apkFile)
            }
        }
    }
}
