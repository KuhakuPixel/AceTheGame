package modder;

import java.io.File;

public class Injector {

	public static String GetSmaliSubPathFromLaunchableActivity(String launchableActivity) {

		// replace the '.' in launchableActivity class
		// to a near complete path
		String subPath = launchableActivity.replace(".", File.separator);
		// don't forget the file extension
		subPath += ".smali";
		return subPath;
	}

	public static String GetSmaliPathFromLaunchableActivity

	(String launchableActivity, String decompiledApkFolder) {

		// when decompiling with apktool
		// the smali classes in subPath will be contained in
		// the folder starting with smali
		// like smali, smali_classes2, smali_classes3 and ect

		return "";
	}

}
