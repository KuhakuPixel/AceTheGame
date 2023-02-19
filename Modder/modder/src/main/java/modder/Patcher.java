package modder;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import org.apache.commons.io.FileUtils;
import org.checkerframework.common.returnsreceiver.qual.This;
import org.apache.commons.lang3.StringUtils;

public class Patcher {

	String apkFilePathStr;
	String decompiledApkDirStr;
	static final String ARCHS[] = new String[] { "x86_64", "x86", "armeabi-v7a", "arm64-v8a" };
	static final String NATIVE_LIB_DIR_NAME = "lib";

	public Patcher(String apkFilePathStr) throws IOException {
		File apkFile = new File(apkFilePathStr);

		if (!apkFile.exists()) {
			throw new IOException("[apkFilePathStr] doesn't exist");
		}
		if (apkFile.isDirectory()) {
			throw new IOException("[apkFilePathStr] must be a file not directory");
		}
		// make sure to get the absolute path
		this.apkFilePathStr = apkFile.getAbsolutePath();

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
		// =============================== decompile the apk ===========
		ApkToolWrap.Decompile(apkFilePathStr, decompiledApkDirStr);
		// =============================================================
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

	public static String LaunchableActivityToSmaliRelativePath(String launchableActivity) {

		// replace the '.' in launchableActivity class
		// to a near complete path
		String relativePath = launchableActivity.replace(".", File.separator);
		// don't forget the file extension
		relativePath += ".smali";
		return relativePath;
	}

	public String GetEntrySmaliPath() throws RuntimeException {

		// find launchable activity
		String launchableActivity = Aapt.GetLaunchableActivity(apkFilePathStr);
		// just exit if can't get a launchable activity
		if (StringUtils.isEmpty(launchableActivity)) {
			String errMsg = String.format("Cannot find launchable activity from apk %s", apkFilePathStr);
			throw new RuntimeException(errMsg);
		}

		String relativeSmaliFilePath = LaunchableActivityToSmaliRelativePath(launchableActivity);
		//

		// when decompiling with apktool
		// the smali classes in subPath will be contained in
		// the folder starting with smali
		// like smali, smali_classes2, smali_classes3 and ect
		File decompiledApkDir = new File(this.decompiledApkDirStr);
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

	public String GetDecompiledApkDirStr() {
		return this.decompiledApkDirStr;
	}

	/*
	 * Create native lib directory for all architecture
	 * if they previously doesn't exist
	 */
	public void CreateNativeLibDir() {
		// check first if apk already has a native lib
		File apkNativeLibDir = new File(this.decompiledApkDirStr, NATIVE_LIB_DIR_NAME);
		// no native lib directory found, make one
		if (!apkNativeLibDir.exists())
			apkNativeLibDir.mkdirs();

		// create lib folder for each architecture if doesn't exist
		for (String arch : Patcher.ARCHS) {
			File archLibFolder = new File(apkNativeLibDir.getAbsolutePath(), arch);
			if (!archLibFolder.exists()) {
				archLibFolder.mkdirs();
			}
		}
	}

	public void AddFileToNativeLibdir(String libFileStr) throws IOException {
		/* 
		File libFile = new File(libFileStr);
		if (!libFile.exists()) {
			throw new IOException(String.format("[pathToLibStr] doesn't exist", libFileStr));
		}

		if (!libFile.isFile()) {
			throw new IOException(String.format("[pathToLibStr] is not a file", libFileStr));
		}
		this.CreateNativeLibDir();

		for (String arch : Patcher.ARCHS) {
			File archLibFolder = new File(apkNativeLibDir.getAbsolutePath(), arch);
			if (!archLibFolder.exists()) {
				archLibFolder.mkdirs();

			}
			// file should be added to /[decompiledApkDirStr]/lib/[arch]/libraryName
			File addedLibFile = new File(archLibFolder.getAbsolutePath(), libFile.getName());
			// lib file already exist, cannot add anymore
			if (addedLibFile.exists()) {
				String errMsg = String.format("Cannot add native library because %s already exist at directory %s",
						libFileStr,
						archLibFolder.getAbsolutePath());
				throw new IOException(errMsg);
			}
			// copy the lib file
			Files.copy(libFile.toPath(), addedLibFile.toPath());

		}
		*/

	}

}
