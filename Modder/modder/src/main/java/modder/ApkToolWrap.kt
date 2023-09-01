package modder

import brut.apktool.Main
import brut.common.BrutException

// apktool stuff 
class ApkToolWrap {
    companion object {
        fun Decompile(apkPathName: String, outDirName: String) {
            val cmd = arrayOf("d", apkPathName, "--output", outDirName, "-f")
            try {
                Main.main(cmd)
            } catch (e: BrutException) {
                println(e.message)
            }
        }

        fun Recompile(decompiledFolderStr: String, apkOutFileStr: String) {
            val cmd = arrayOf("b", decompiledFolderStr, "--output", apkOutFileStr)
            try {
                Main.main(cmd)
            } catch (e: BrutException) {
                println(e.message)
            }
        }
    }
}
