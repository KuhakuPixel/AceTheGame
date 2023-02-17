package modder;

import java.io.File;

public class ApkMod {
	final static String DECOMPILED_DIR_EXT = ".decompiled";
	final static String RECOMPILED_DIR_EXT = ".recompiled";

	public static void Decompile(String apkDirStr, String outDirName) {

		File apkPath = new File(apkDirStr);
		if (!apkPath.exists()) {
			System.out.printf("file or directory \"%s\" not found\n", apkPath.toString());
			return;
		}

		// only accept an apk file in a directory
		if (!apkPath.isDirectory()) {
			System.out.printf("%s is expected to be directory containing apks\n", apkPath.toString());
			return;
		}
		File decompiledParentFolder = new File(outDirName);

		/*
		 * collect all files in directory
		 * and decompile each apk file
		 */
		File[] apkPathFiles = apkPath.listFiles();
		for (int i = 0; i < apkPathFiles.length; i++) {
			if (apkPathFiles[i].isFile()) {
				// get name
				String currentApkFileStr = apkPathFiles[i].toString();
				String apkName = apkPathFiles[i].getName();
				// create output folder ([apkName].decompiled)
				File outFolder = new File(decompiledParentFolder.toString(),
						apkName + DECOMPILED_DIR_EXT);
				//

				System.out.printf("Putting decompilation at %s\n",
						outFolder.toString());

				System.out.printf("Decompiling %s\n", currentApkFileStr);
				ApkToolWrap.Decompile(currentApkFileStr, outFolder.toString());
			}
		}

	}

	public static void Recompile(String decompiledFolderStr, String outDirName) {

		// =================== check if folder exist and follows
		// convention==================
		File decompiledFolder = new File(decompiledFolderStr);
		if (!decompiledFolder.exists()) {
			System.out.printf("file or directory \"%s\" not found\n", decompiledFolderStr);
			return;
		}

		if (!decompiledFolder.isDirectory()) {
			System.out.printf("%s is expected to be a directory\n", decompiledFolderStr);
			return;
		}

		/*
		 * when checking if a folder ends with a extension,
		 * File.toString().endsWith() should be used, instead of checking
		 * the users argument directly,
		 *
		 * since the folder path that user gives may or may not contains '/' at the end
		 * making the check if it ends with a certain extension more difficult
		 *
		 * if the argument is passed to File object first then converted with
		 * "toString()"
		 * it is guaranteed that it doesn't contain '/'
		 * 
		 */

		if (!decompiledFolder.toString().endsWith(DECOMPILED_DIR_EXT)) {
			System.out.printf("Warning: folder %s doesn't end with .decompiled\n", decompiledFolderStr);
			return;

		}
		// ==========================================================
		// by convention, only pickup folder that contains DECOMPILED_DIR_EXT
		File[] files = decompiledFolder.listFiles();
		File recompiledParentFolder = new File(outDirName);
		for (int i = 0; i < files.length; i++) {
			if (files[i].isFile()) {
				System.out.printf("Warning: found an unknown file %s\n", files[i].toString());
				continue;
			}
			// only try to decompile folder that ends with DECOMPILED_DIR_EXT
			String dirStr = files[i].toString();
			if (!dirStr.endsWith(DECOMPILED_DIR_EXT)) {
				System.out.printf("Warning: found an unknown folder %s\n", dirStr);
				continue;

			}
			// ======== everything looks good, recompile the thing ===========
			// make path for recompiled apk
			String apkName = files[i].getName();
			File outFile = new File(recompiledParentFolder, apkName + ".apk");
			//
			System.out.printf("recompiling apk %s as %s\n", dirStr, outFile.toString());
			ApkToolWrap.Recompile(dirStr, outFile.toString());

		}

	}

}
