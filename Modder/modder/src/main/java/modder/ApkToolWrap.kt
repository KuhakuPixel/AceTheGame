package modder

import brut.apktool.Main

// apktool stuff 
class ApkToolWrap {
    companion object {
        fun Decompile(apkPathName: String, outDirName: String) {
            val cmd = arrayOf("d", apkPathName, "--output", outDirName, "-f")
            Main.main(cmd)
        }

        fun Recompile(decompiledFolderStr: String, apkOutFileStr: String) {
            val cmd = arrayOf("b", decompiledFolderStr, "--output", apkOutFileStr)
            Main.main(cmd)
        }
    }
}
