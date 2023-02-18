
package modder;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class TestInjector {

    @Test
    void RunBasicCmd() {

        String path = "";

        path = Patcher.GetSmaliRelativePathFromLaunchableActivity("com.java.simpleapp.MainActivity");
        assertEquals("com/java/simpleapp/MainActivity.smali", path);

        path = Patcher.GetSmaliRelativePathFromLaunchableActivity("com.java.complexapp.MainActivity");
        assertEquals("com/java/complexapp/MainActivity.smali", path);

    }

}
