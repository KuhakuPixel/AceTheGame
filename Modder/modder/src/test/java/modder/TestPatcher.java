
package modder;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

import java.io.IOException;
import java.io.File;

class TestPatcher {
    //
    ClassLoader classLoader = getClass().getClassLoader();
    // https://stackoverflow.com/a/43415602/14073678
    final String testApkPathStr = classLoader.getResource("apk_example/app-debug.apk").getFile();
    final String testLibFile = classLoader.getResource("test_file/lib_fakeLib.so").getFile();

    @Test
    void LaunchableActivityToSmaliRelativePath() {

        String path = "";

        path = Patcher.LaunchableActivityToSmaliRelativePath("com.java.simpleapp.MainActivity");
        assertEquals("com/java/simpleapp/MainActivity.smali", path);

        path = Patcher.LaunchableActivityToSmaliRelativePath("com.java.complexapp.MainActivity");
        assertEquals("com/java/complexapp/MainActivity.smali", path);

    }

    @Test
    void GetSmaliFolderOfLaunchableActvity() throws IOException {
        //
        Patcher patcher = new Patcher(testApkPathStr);
        String smaliFolder = patcher.GetSmaliFolderOfLaunchableActvity();
        // check the relative path because [GetEntrySmaliPath] will
        // return
        // absolute path
        // this can be easily determined by using "aapt dump bading [apk]"
        // then the main activity will be known,
        // decompile the apk and find the smali file in the directory
        assertEquals(true, smaliFolder.endsWith("/smali_classes3"));
        // final check to see if the path actually exist
        File smaliFolderFile = new File(smaliFolder);
        assertEquals(true, smaliFolderFile.exists());
    }

    @Test
    void GetEntrySmaliPath() throws IOException {
        //
        Patcher patcher = new Patcher(testApkPathStr);
        String smaliPath = patcher.GetEntrySmaliPath();
        // check the relative path because [GetEntrySmaliPath] will
        // return
        // absolute path
        // this can be easily determined by using "aapt dump bading [apk]"
        // then the main activity will be known,
        // decompile the apk and find the smali file in the directory
        assertEquals(true, smaliPath.endsWith("/smali_classes3/com/java/simpleapp/MainActivity.smali"));
        // final check to see if the path actually exist
        File mainActivitySmaliFile = new File(smaliPath);
        assertEquals(true, mainActivitySmaliFile.exists());
    }

    @Test
    void CreateNativeLibDir() throws IOException {
        Patcher patcher = new Patcher(testApkPathStr);
        String decompiledDirStr = patcher.GetDecompiledApkDirStr();

        File nativeLibDir = new File(decompiledDirStr, Patcher.NATIVE_LIB_DIR_NAME);
        assertEquals(false, nativeLibDir.exists());
        patcher.CreateNativeLibDir();
        assertEquals(true, nativeLibDir.exists());
        // check if directory for every arch has been created in
        // native lib directory
        for (String arch : Patcher.ARCHS) {
            File archLibDir = new File(nativeLibDir.getAbsolutePath(), arch);
            assertEquals(true, archLibDir.exists());
        }

    }

    @Test
    void AddFileToNativeLibDir() throws IOException {
        Patcher patcher = new Patcher(testApkPathStr);
        String decompiledDirStr = patcher.GetDecompiledApkDirStr();

        File nativeLibDir = new File(decompiledDirStr, Patcher.NATIVE_LIB_DIR_NAME);
        assertEquals(false, nativeLibDir.exists());
        patcher.AddFileToNativeLibDir(testLibFile);
        assertEquals(true, nativeLibDir.exists());

        // check if directory for every arch has the file
        // that is added
        String addedFileName = new File(testLibFile).getName();
        patcher.IterateNativeLibArchDir(
                (String arch, File archLibDir) -> {
                    File addedFile = new File(archLibDir.getAbsolutePath(), addedFileName);
                    assertEquals(true, addedFile.exists());
                }

        );

    }

    @Test
    void AddMemScannerLib() throws IOException {
        Patcher patcher = new Patcher(testApkPathStr);

        // mem scanner lib shouldnt exist previously
        patcher.IterateNativeLibArchDir(

                (String arch, File archLibFolder) -> {
                    File memScannerLib = new File(archLibFolder, Patcher.MEM_SCANNER_LIB_NAME);
                    assertEquals(false, memScannerLib.exists());
                }

        );
        // add mem scanner lib
        patcher.AddMemScannerLib();
        //
        patcher.IterateNativeLibArchDir(

                (String arch, File archLibFolder) -> {
                    File memScannerLib = new File(archLibFolder, Patcher.MEM_SCANNER_LIB_NAME);
                    assertEquals(true, memScannerLib.exists());
                }

        );
    }

}
