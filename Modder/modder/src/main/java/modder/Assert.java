package modder;

import java.io.File;
import java.io.IOException;

public class Assert {

    public static void AssertExistAndIsDirectory(File dir) throws IOException {
        String errMsg = "";
        if (!dir.exists()) {
            errMsg = String.format("%s directory doesn't exist", dir.getAbsolutePath());
            throw new IOException(errMsg);
        }
        if (!dir.isDirectory()) {
            errMsg = String.format("%s must be a directory not a file", dir.getAbsolutePath());
            throw new IOException(errMsg);
        }

    }

    public static void AssertExistAndIsFile(File dir) throws IOException {
        String errMsg = "";
        if (!dir.exists()) {
            errMsg = String.format("%s directory doesn't exist", dir.getAbsolutePath());
            throw new IOException(errMsg);
        }
        if (!dir.isFile()) {
            errMsg = String.format("%s must be a file not a directory", dir.getAbsolutePath());
            throw new IOException(errMsg);
        }

    }

}
