package com.kuhakupixel.atg.backend

import android.content.Context

object Asset {
    /*
    * copy and set [srcFileStr] as executable from assets folder
    * to location that it can be executed
    *
    * returns full path of the copied file
    * https://stackoverflow.com/a/18753500/14073678
    * */
    @Throws(IOException::class)
    fun CopyAssetToExecutableDir(context: Context, srcFileStr: String): String {
        val srcFile = File(srcFileStr)
        // get the directory where we can execute this file
        val assetManager: AssetManager = context.getAssets()
        val appDirStr: String = context.getFilesDir().getPath()
        // open the original file as InputStream and copy it
        // to another directory
        val srcInputStream: InputStream = assetManager.open(srcFileStr)
        val destFile = File(appDirStr, srcFile.getName())
        Files.copy(srcInputStream, destFile.toPath(), StandardCopyOption.REPLACE_EXISTING)
        // set this file as executable to make sure we can run it
        if (!destFile.setExecutable(true)) {
            val errMsg: String = String.format("Cannot set %s as executable", destFile.getAbsolutePath())
            throw IOException(errMsg)
        }
        // some cleanup
        srcInputStream.close()
        //
        return destFile.getAbsolutePath()
    }
}