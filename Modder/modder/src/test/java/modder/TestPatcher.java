
package modder;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

import java.io.IOException;
import java.io.File;

class TestPatcher {

    @Test
    void LaunchableActivityToSmaliRelativePath() {

        String path = "";

        path = Patcher.LaunchableActivityToSmaliRelativePath("com.java.simpleapp.MainActivity");
        assertEquals("com/java/simpleapp/MainActivity.smali", path);

        path = Patcher.LaunchableActivityToSmaliRelativePath("com.java.complexapp.MainActivity");
        assertEquals("com/java/complexapp/MainActivity.smali", path);

    }

    @Test
    void GetEntrySmaliPath() throws IOException {
        //
        ClassLoader classLoader = getClass().getClassLoader();
        // https://stackoverflow.com/a/43415602/14073678
        String filePath = classLoader.getResource("apk_example/app-debug.apk").getFile();
        //
        Patcher patcher = new Patcher(filePath);
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

}
