package com.java.atg;

import static org.junit.Assert.assertNotEquals;

import androidx.test.platform.app.InstrumentationRegistry;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;

import java.io.IOException;
import org.robolectric.RobolectricTestRunner;

/**
 *  need to run test under Robolectric (instrumented test)
 *  to fix no instrumentation registered error
 *
 *  https://stackoverflow.com/questions/53595837/androidx-no-instrumentation-registered-must-run-under-a-registering-instrumen
 */
@RunWith(RobolectricTestRunner.class)
public class ACETest {


    @Before
    public void prepareApplication() {
        // https://stackoverflow.com/questions/52510088/application-oncreate-not-being-called-in-test
        ATG app = (ATG) InstrumentationRegistry.getInstrumentation().getTargetContext().getApplicationContext();
        app.onCreate();
    }
    @Test
    public void GetBinPath() throws IOException {
        String path = ACE.GetBinPath();
        assert(path!="");
    }
}