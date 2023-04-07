package com.java.atg;

import androidx.test.platform.app.InstrumentationRegistry;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;

import java.io.IOException;

/**
 * need to run test under Robolectric (instrumented test)
 * to fix no instrumentation registered error
 * <p>
 * https://stackoverflow.com/questions/53595837/androidx-no-instrumentation-registered-must-run-under-a-registering-instrumen
 */
@RunWith(RobolectricTestRunner.class)
public class BinaryTest {


    @Before
    public void prepareApplication() {
        // https://stackoverflow.com/questions/52510088/application-oncreate-not-being-called-in-test
        ATG app = (ATG) InstrumentationRegistry.getInstrumentation().getTargetContext().getApplicationContext();
        app.onCreate();
    }

    @Test
    public void GetBinPath() throws IOException {
        String path = "";
        path = Binary.GetBinPath(Binary.Type.server);
        assert (path != "");

        path = Binary.GetBinPath(Binary.Type.client);
        assert (path != "");
    }

}