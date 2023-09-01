package modder

import at.favre.tools.apksigner.SignTool
import java.io.File

class ApkSigner {
    companion object {
        fun Sign(apkPath: File) {
            val args = arrayOf("--apks", apkPath.absolutePath, "--allowResign", "--overwrite")
            SignTool.main(args)
        }
    }
}
