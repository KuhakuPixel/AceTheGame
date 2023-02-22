package modder;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import java.nio.file.Paths;

public class Patcher {

	String apkFilePathStr;
	String decompiledApkDirStr;
	static final String ARCHS[] = new String[] { "x86_64", "x86", "armeabi-v7a", "arm64-v8a" };
	static final String NATIVE_LIB_DIR_NAME = "lib";
	final Resource resource = new Resource();
	// ===================
	final static String MEM_SCANNER_LIB_RESOURCE_DIR = "/AceAndroidLib/code_to_inject/lib";
	// ======== path to memory scanner engine lib ==============
	// for attach
	static final String MEM_SCANNER_LIB_NAME = "liblib_ACE.so";

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

	// TODO: find a way to cut down code duplication between this function and
	// GetEntrySmaliPath
	public String GetSmaliFolderOfLaunchableActvity() throws RuntimeException {

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
				return basePathStr;

		}

		return "";

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
		String basePathStr = this.GetSmaliFolderOfLaunchableActvity();

		if (StringUtils.isEmpty(basePathStr))
			return "";

		String pathToSmali = (new File(basePathStr, relativeSmaliFilePath)).getAbsolutePath();
		return pathToSmali;
	}

	public String GetDecompiledApkDirStr() {
		return this.decompiledApkDirStr;
	}

	/*
	 * Create native lib directory for all architecture
	 * if they previously doesn't exist
	 * 
	 * returns path to that native library
	 */
	public String CreateNativeLibDir() {
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
		return apkNativeLibDir.getAbsolutePath();
	}

	public interface IterateNativeLibArchDirInterface {

		void onIter(String arch, File archLibFolder) throws IOException;
	}

	public void IterateNativeLibArchDir(IterateNativeLibArchDirInterface funcInterface) throws IOException {
		// make sure to create directory for native libs
		String apkNativeLibDir = this.CreateNativeLibDir();
		for (String arch : Patcher.ARCHS) {
			File archLibFolder = new File(apkNativeLibDir, arch);
			// call callback
			funcInterface.onIter(arch, archLibFolder);

		}
	}

	public void AddFileToNativeLibDir(String srcFileStr) throws IOException {

		File srcFile = new File(srcFileStr);
		if (!srcFile.exists()) {
			throw new IOException(String.format("%s doesn't exist",
					srcFileStr));
		}

		if (!srcFile.isFile()) {
			throw new IOException(String.format("%s is not a file",
					srcFileStr));
		}

		this.IterateNativeLibArchDir(

				(String arch, File archLibFolder) -> {
					// file should be added to /[decompiledApkDirStr]/lib/[arch]/libraryName
					File addedFile = new File(archLibFolder.getAbsolutePath(),
							srcFile.getName());
					// lib file already exist, cannot add anymore
					if (addedFile.exists()) {
						String errMsg = String.format(
								"Cannot add native library because %s already exist at directory %s",
								srcFileStr,
								archLibFolder.getAbsolutePath());
						throw new IOException(errMsg);
					}
					// copy the lib file
					Files.copy(srcFile.toPath(), addedFile.toPath());

				}

		);

	}

	public void AddMemScannerLib() throws IOException {

		this.IterateNativeLibArchDir(

				(String arch, File archLibFolder) -> {
					File destFile = new File(archLibFolder.getAbsolutePath(), MEM_SCANNER_LIB_NAME);
					String srcFile = Paths.get(MEM_SCANNER_LIB_RESOURCE_DIR, arch, MEM_SCANNER_LIB_NAME)
							.toAbsolutePath()
							.toString();
					// lib file already exist, cannot add anymore
					if (destFile.exists()) {
						String errMsg = String.format(
								"Cannot add native library because %s already exist at directory %s",
								destFile.getAbsolutePath(),
								archLibFolder.getAbsolutePath());
						throw new IOException(errMsg);
					}
					// copy the lib file
					resource.CopyResourceFile(srcFile, destFile.toString());

				}

		);

	}

	public void Export(String exportPath) {
		File exportFile = new File(exportPath);
		ApkToolWrap.Recompile(this.decompiledApkDirStr, exportFile.getAbsolutePath());
		System.out.printf("exported to %s\n", exportFile.getAbsolutePath());

	}

}
