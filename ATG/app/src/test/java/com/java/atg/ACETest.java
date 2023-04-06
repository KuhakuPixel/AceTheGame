package com.java.atg;

import static org.junit.Assert.*;

import androidx.test.platform.app.InstrumentationRegistry;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

import org.robolectric.RobolectricTestRunner;

/**
 * need to run test under Robolectric (instrumented test)
 * to fix no instrumentation registered error
 * <p>
 * https://stackoverflow.com/questions/53595837/androidx-no-instrumentation-registered-must-run-under-a-registering-instrumen
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
    public void Run() throws IOException {
        /*
        // select only arm binaries, because instrumented test
        // under RobolectricTestRunner seems to run only under arm device
        String path = ACE.GetBinPath(Cpu.Arch.arm32);
        assertEquals(true, (new File(path).exists()));
        // should run without errors ...
        Process p = Runtime.getRuntime().exec(new String[]{path, "--attach-self"});
        BufferedReader stdInput = new BufferedReader(new
                InputStreamReader(p.getInputStream()));

        BufferedReader stdError = new BufferedReader(new
                InputStreamReader(p.getErrorStream()));

// Read the output from the command
        System.out.println("Here is the standard output of the command:\n");
        String s = null;
        while ((s = stdInput.readLine()) != null) {
            System.out.println(s);
        }

// Read any errors from the attempted command
        System.out.println("Here is the standard error of the command (if any):\n");
        while ((s = stdError.readLine()) != null) {
            System.out.println(s);
        }
        //
        ACEClient client = new ACEClient();
        String reply = client.Request("attached");
        assertEquals("attached_ok", reply);
        */

    }
}