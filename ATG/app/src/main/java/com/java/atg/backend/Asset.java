package com.java.atg.backend;

import android.content.Context;
import android.content.res.AssetManager;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.apache.commons.codec.digest.DigestUtils;

public class Asset {
    /*
    * copy and set [srcFileStr] as executable from assets folder
    * to location that it can be executed
    *
    * returns full path of the copied file
    * https://stackoverflow.com/a/18753500/14073678
    * */
    public static String CopyAssetToExecutableDir(Context context, String srcFileStr) throws IOException {
        File srcFile = new File(srcFileStr);
        // get the directory where we can execute this file
        AssetManager assetManager = context.getAssets();
        String appDirStr = context.getFilesDir().getPath();
        // open the original file as InputStream and copy it
        // to another directory
        InputStream srcInputStream = assetManager.open(srcFileStr);
        File destFile = new File(appDirStr, srcFile.getName());
        Files.copy(srcInputStream, destFile.toPath(), StandardCopyOption.REPLACE_EXISTING);
        // set this file as executable to make sure we can run it
        if (!destFile.setExecutable(true)) {
            String errMsg = String.format("Cannot set %s as executable", destFile.getAbsolutePath());
            throw new IOException(errMsg);
        }
        // some cleanup
        srcInputStream.close();
        //
        return destFile.getAbsolutePath();
    }
}
