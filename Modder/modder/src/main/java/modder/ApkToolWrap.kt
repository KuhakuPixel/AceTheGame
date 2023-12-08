package modder

// apktool stuff 
class ApkToolWrap {
    companion object {
        fun Decompile(apkPathName: String, outDirName: String, decodeResource: Boolean) {
            val cmd = mutableListOf("d", apkPathName, "--output", outDirName, "--force")
            // add --no-resource, because apktool by default decodes resource
            if (!decodeResource)
                cmd.add("--no-res")

            brut.apktool.Main.main(cmd.toTypedArray())
        }

        fun Recompile(decompiledFolderStr: String, apkOutFileStr: String) {

	    // https://github.com/iBotPeaches/Apktool/issues/1978
            val cmd = arrayOf("b", decompiledFolderStr, "--output", apkOutFileStr, "--use-aapt2")

            brut.apktool.Main.main(cmd)
        }
    }
}
