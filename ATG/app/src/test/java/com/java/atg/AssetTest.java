package com.java.atg;

import static org.junit.Assert.assertEquals;

import android.content.Context;
import android.content.res.AssetManager;

import androidx.test.platform.app.InstrumentationRegistry;

import org.apache.commons.io.IOUtils;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.TimeUnit;

/**
 * need to run test under Robolectric (instrumented test)
 * to fix no instrumentation registered error
 * <p>
 * https://stackoverflow.com/questions/53595837/androidx-no-instrumentation-registered-must-run-under-a-registering-instrumen
 */
@RunWith(RobolectricTestRunner.class)
public class AssetTest {


    @Before
    public void prepareApplication() {
        // https://stackoverflow.com/questions/52510088/application-oncreate-not-being-called-in-test
        ATG app = (ATG) InstrumentationRegistry.getInstrumentation().getTargetContext().getApplicationContext();
        app.onCreate();
    }

    @Test
    public void CopyAssetToExecutableDir() throws IOException{
        //
        String pathBin = "bin/ACE/arm64-v8a/ACE";
        Context context = ATG.GetContext();
        AssetManager assetManager = context.getAssets();
        InputStream expectedInputStream = assetManager.open(pathBin);
        //
        String pathToCopiedStr = Asset.CopyAssetToExecutableDir(pathBin);
        InputStream actualInputStream = new FileInputStream(pathToCopiedStr);
        assert true == IOUtils.contentEquals( expectedInputStream, actualInputStream);
    }
}