package modder;

import at.favre.tools.apksigner.SignTool;

import java.io.File;

public class ApkSigner {
    static public void Sign(File apkPath){

        String[] args = new String[]{"--apks", apkPath.getAbsolutePath(), "--allowResign", "--overwrite"};
        SignTool.main(args);
    }

}
