
package modder;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
import java.util.List;
import java.util.ArrayList;
import java.util.Arrays;
import java.io.File;
import java.io.IOException;

class TestAapt {
	// https://stackoverflow.com/a/43415602/14073678
	ClassLoader classLoader = getClass().getClassLoader();
	String apk1_Path = classLoader.getResource("apk_example/app-debug.apk").getFile();
	String apk2_Path = Resource.GetFile(classLoader, "apk_example/with space/app-debug.apk");

	@Test
	void RunBasicCmd() {
		List<String> output = new ArrayList<String>();

		// should contains basic info about aapt when run with --help
		output = Aapt.RunCmd(Arrays.asList("--help"));
		assertEquals(true, output.contains("Android Asset Packaging Tool"));
		assertEquals(true, output.contains("Usage:"));

	}

	@Test
	void GetLaunchableActivity() throws IOException {

		{

			// just in case
			assertEquals(true, new File(apk1_Path).exists());
			String launchableActivity = Aapt.GetLaunchableActivity(apk1_Path);
			assertEquals("com.java.simpleapp.MainActivity", launchableActivity);
		}
		{
			// just in case
			assertEquals(true, new File(apk2_Path).exists());
			String launchableActivity = Aapt.GetLaunchableActivity(apk2_Path);
			assertEquals("com.java.simpleapp.MainActivity", launchableActivity);
		}
	}
}
