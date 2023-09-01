package modder

import at.favre.tools.apksigner.SignTool
import java.io.File

object ApkSigner {
    fun Sign(apkPath: File) {
        val args = arrayOf("--apks", apkPath.absolutePath, "--allowResign", "--overwrite")
        SignTool.main(args)
    }
}
