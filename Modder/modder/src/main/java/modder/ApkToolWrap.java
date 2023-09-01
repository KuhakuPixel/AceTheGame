package modder;

// apktool stuff 

import brut.common.BrutException;
//
import java.io.File;
import java.io.IOException;

public class ApkToolWrap {

    public static void Decompile(String apkPathName, String outDirName) {
        String[] cmd = new String[]{"d", apkPathName, "--output", outDirName, "-f"};
        try {
            brut.apktool.Main.main(cmd);
        } catch (BrutException e) {
            System.out.println(e.getMessage());
        }
    }

    public static void Recompile(String decompiledFolderStr, String apkOutFileStr) {

        String[] cmd = new String[]{"b", decompiledFolderStr, "--output", apkOutFileStr};
        try {
            brut.apktool.Main.main(cmd);
        } catch (BrutException e) {
            System.out.println(e.getMessage());
        }
    }

}
