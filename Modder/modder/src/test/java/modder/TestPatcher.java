
package modder;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

import java.io.IOException;

class TestPatcher {


    @Test
    void TestConstructor() throws IOException {
        //
        ClassLoader classLoader = getClass().getClassLoader();
        // https://stackoverflow.com/a/43415602/14073678
        String filePath = classLoader.getResource("apk_example/app-debug.apk").getFile();

        Patcher patcher = new Patcher(filePath);
    }

}
