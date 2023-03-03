
/*
 * add additional functionally on top of apktool's aapt manager
 * */
package modder;

import brut.common.BrutException;
import brut.util.AaptManager;
import java.util.List;
import java.util.ArrayList;
import java.util.Arrays;
import java.io.File;
import java.io.IOException;

import org.apache.commons.lang3.StringUtils;

public class Aapt {

	public static List<String> RunCmd(List<String> args) {
		List<String> output = new ArrayList<String>();
		File aaptFile;
		// get aapt
		try {
			aaptFile = AaptManager.getAapt1();
		} catch (BrutException e) {
			System.out.printf("%s\n", e.getMessage());
			return output;
		}
		output = Util.RunCommand(aaptFile.getAbsolutePath(), args);

		return output;
	}

	public static List<String> DumpBadging(String apkPath) throws IOException {
		Assert.AssertExistAndIsFile(new File(apkPath));
		String apkPathArg = String.format("%s", apkPath);
		List<String> out = RunCmd(Arrays.asList("dump", "badging", apkPathArg));
		return out;
	}

	public static String GetLaunchableActivity(String apkPath) throws IOException {
		String launchableActivity = "";

		List<String> out = DumpBadging(apkPath);
		for (int i = 0; i < out.size(); i++) {
			// found a launchable activity
			// ussually the output is like
			//
			// (in one line)
			// ```
			// launchable-activity: name='com.java.simpleapp.MainActivity' label='SimpleApp'
			// icon=''
			// ```
			if (out.get(i).startsWith("launchable-activity:")) {
				// try to parse the output and get the activity
				String matchedStr[] = StringUtils.substringsBetween(out.get(i), "name='", "'");
				// must get exactly one match
				assert (matchedStr.length == 1);
				launchableActivity = matchedStr[0];
				break;
			}
		}
		return launchableActivity;
	}

}
