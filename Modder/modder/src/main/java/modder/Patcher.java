package modder;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import org.apache.commons.io.FileUtils;

public class Patcher {

	String apkFilePathStr;
	String decompiledApkDirStr;

	public Patcher(String apkFilePathStr) throws IOException {
		File apkFile = new File(apkFilePathStr);

		if (!apkFile.exists()) {
			throw new IOException("[apkFilePathStr] doesn't exist");
		}
		if (apkFile.isDirectory()) {
			throw new IOException("[apkFilePathStr] must be a file not directory");
		}

		// create a tempdir with name containing its object ID
		// to ensure that every Patcher object has unique temp folder
		// hopefully :)
		// https://stackoverflow.com/questions/909843/how-to-get-the-unique-id-of-an-object-which-overrides-hashcode
		int objID = System.identityHashCode(this);
		String tempDirStr = String.format("ModderDecompiledApk.%d", objID);
		Path tempDir = Files.createTempDirectory(tempDirStr);
		// make sure we have the absolute path
		// https://stackoverflow.com/a/17552395/14073678
		this.decompiledApkDirStr = tempDir.toAbsolutePath().toString();
		System.out.printf("Create temp folder at %s\n", decompiledApkDirStr);
		// add a destructor to cleanup the temp folder after program exit
		// since deleteOnExit can only delete if its folder is empty
		// https://stackoverflow.com/a/20280989/14073678
		// the only solution seems to be deleting the temp folder
		// recursively on shutdown
		// https://stackoverflow.com/questions/11165253/deleting-a-directory-on-exit-in-java
		Runtime.getRuntime().addShutdownHook(

				new Thread() {

					@Override
					public void run() {
						try {
							FileUtils.deleteDirectory(new File(decompiledApkDirStr));
						} catch (IOException e) {
							System.out.printf("Exception when [Patcher] cleans up temp directory at %s\n",
									decompiledApkDirStr);
						}

					}
				}

		);
	}

	public static String GetSmaliRelativePathFromLaunchableActivity(String launchableActivity) {

		// replace the '.' in launchableActivity class
		// to a near complete path
		String relativePath = launchableActivity.replace(".", File.separator);
		// don't forget the file extension
		relativePath += ".smali";
		return relativePath;
	}

	public static String GetSmaliPathFromLaunchableActivity

	(String launchableActivity, String decompiledApkDirStr) {

		String relativeSmaliFilePath = GetSmaliRelativePathFromLaunchableActivity(launchableActivity);

		// when decompiling with apktool
		// the smali classes in subPath will be contained in
		// the folder starting with smali
		// like smali, smali_classes2, smali_classes3 and ect
		File decompiledApkDir = new File(decompiledApkDirStr);
		File[] files = decompiledApkDir.listFiles();

		for (int i = 0; i < files.length; i++) {

			if (!files[i].isDirectory())
				continue;

			String dirName = files[i].getName();

			if (!dirName.startsWith("smali"))
				continue;

			String basePathStr = files[i].getAbsolutePath();
			File smaliFile = new File(basePathStr, relativeSmaliFilePath);
			// check if this thing actually exist
			if (smaliFile.exists())
				return smaliFile.getAbsolutePath();

		}

		return "";
	}

}
