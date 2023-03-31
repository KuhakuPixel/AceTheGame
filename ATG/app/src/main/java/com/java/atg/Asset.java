package com.java.atg;

import android.content.Context;
import android.content.res.AssetManager;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.apache.commons.io.IOUtils;


public class Asset {
    /*
    * copy and set [fileStr] as executable from assets folder
    * to location that it can be executed
    *
    * returns full path of the copied file
    * https://stackoverflow.com/a/18753500/14073678
    * */
    public static String CopyAssetToExecutableDir(String fileStr) throws IOException {
        File file = new File(fileStr);
        // get the directory where we can execute this file
        Context context = ATG.GetContext();
        AssetManager assetManager = context.getAssets();
        String appDirStr = context.getFilesDir().getPath();
        // open the original file as InputStream and copy it
        // to another directory
        InputStream in = assetManager.open(fileStr);
        File outFile = new File(appDirStr, file.getName());
        OutputStream out = new FileOutputStream(outFile);
        IOUtils.copy(in, out);
        // set this file as executable to make sure we can run it
        if (!outFile.setExecutable(true)) {
            String errMsg = String.format("Cannot set %s as executable", outFile.getAbsolutePath());
            throw new IOException(errMsg);
        }
        // some cleanup
        in.close();
        out.flush();
        out.close();
        //
        return outFile.getAbsolutePath();
    }
}
