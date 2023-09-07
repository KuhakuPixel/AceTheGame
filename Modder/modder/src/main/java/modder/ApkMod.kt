package modder

import java.io.File

class ApkMod {
    companion object {
        val DECOMPILED_DIR_EXT = ".decompiled"
        val RECOMPILED_DIR_EXT = ".recompiled"
        fun Decompile(apkDirStr: String, outDirName: String) {
            val apkPath = File(apkDirStr)
            if (!apkPath.exists()) {
                System.out.printf("file or directory \"%s\" not found\n", apkPath.toString())
                return
            }

            // only accept an apk file in a directory
            if (!apkPath.isDirectory) {
                System.out.printf("%s is expected to be directory containing apks\n", apkPath.toString())
                return
            }
            val decompiledParentFolder = File(outDirName)

            /*
		 * collect all files in directory
		 * and decompile each apk file
		 */
            val apkPathFiles: Array<File> = apkPath.listFiles()!!
            for (i in apkPathFiles.indices) {
                if (apkPathFiles[i].isFile) {
                    // get name
                    val currentApkFileStr = apkPathFiles[i].toString()
                    val apkName = apkPathFiles[i].name
                    // create output folder ([apkName].decompiled)
                    val outFolder = File(decompiledParentFolder.toString(),
                            apkName + DECOMPILED_DIR_EXT)
                    //
                    System.out.printf("Putting decompilation at %s\n",
                            outFolder.toString())
                    System.out.printf("Decompiling %s\n", currentApkFileStr)
                    ApkToolWrap.Decompile(currentApkFileStr, outFolder.toString(), decodeResource = true)
                }
            }
        }

        fun Recompile(decompiledFolderStr: String, outDirName: String) {

            // =================== check if folder exist and follows
            // convention==================
            val decompiledFolder = File(decompiledFolderStr)
            if (!decompiledFolder.exists()) {
                System.out.printf("file or directory \"%s\" not found\n", decompiledFolderStr)
                return
            }
            if (!decompiledFolder.isDirectory) {
                System.out.printf("%s is expected to be a directory\n", decompiledFolderStr)
                return
            }

            /*
		 * when checking if a folder ends with a extension,
		 * File.toString().endsWith() should be used, instead of checking
		 * the users argument directly,
		 *
		 * since the folder path that user gives may or may not contains '/' at the end
		 * making the check if it ends with a certain extension more difficult
		 *
		 * if the argument is passed to File object first then converted with
		 * "toString()"
		 * it is guaranteed that it doesn't contain '/'
		 * 
		 */if (!decompiledFolder.toString().endsWith(DECOMPILED_DIR_EXT)) {
                System.out.printf("Warning: folder %s doesn't end with .decompiled\n", decompiledFolderStr)
                return
            }
            // ==========================================================
            // by convention, only pickup folder that contains DECOMPILED_DIR_EXT
            val files: Array<File> = decompiledFolder.listFiles()!!
            val recompiledParentFolder = File(outDirName)
            for (i in files.indices) {
                if (files[i].isFile) {
                    System.out.printf("Warning: found an unknown file %s\n", files[i].toString())
                    continue
                }
                // only try to decompile folder that ends with DECOMPILED_DIR_EXT
                val dirStr = files[i].toString()
                if (!dirStr.endsWith(DECOMPILED_DIR_EXT)) {
                    System.out.printf("Warning: found an unknown folder %s\n", dirStr)
                    continue
                }
                // ======== everything looks good, recompile the thing ===========
                // make path for recompiled apk
                val apkName = files[i].name
                val outFile = File(recompiledParentFolder, "$apkName.apk")
                //
                System.out.printf("recompiling apk %s as %s\n", dirStr, outFile.toString())
                ApkToolWrap.Recompile(dirStr, outFile.toString())
            }
        }
    }
}
