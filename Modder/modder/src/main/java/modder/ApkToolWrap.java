package modder;

// apktool stuff 
import brut.common.BrutException;
import brut.androlib.*;
import brut.androlib.err.CantFindFrameworkResException;
import brut.androlib.err.InFileNotFoundException;
import brut.androlib.err.OutDirExistsException;
import brut.androlib.options.BuildOptions;
import brut.common.BrutException;
import brut.directory.DirectoryException;
import brut.util.AaptManager;
import brut.util.OSDetection;
//
import java.io.File;
import java.io.IOException;

public class ApkToolWrap {

	public static void Decompile(String apkPathName, String outDirName) {
		//
		File apkFile = new File(apkPathName);
		File outDir = new File(outDirName);
		ApkDecoder decoder = new ApkDecoder();
		try {
			decoder.setDecodeResources(ApkDecoder.DECODE_RESOURCES_NONE);
			decoder.setOutDir(outDir);
			decoder.setApkFile(apkFile);
		} catch (AndrolibException e) {
		}

		try {
			decoder.decode();
		} catch (OutDirExistsException ex) {
			System.err
					.println("Destination directory ("
							+ outDir.getAbsolutePath()
							+ ") "
							+ "already exists. Use -f switch if you want to overwrite it.");
			System.exit(1);
		} catch (InFileNotFoundException ex) {
			System.err.println("Input file (" + apkPathName + ") " + "was not found or was not readable.");
			System.exit(1);
		} catch (CantFindFrameworkResException ex) {
			System.err
					.println("Can't find framework resources for package of id: "
							+ ex.getPkgId()
							+ ". You must install proper "
							+ "framework files, see project website for more info.");
			System.exit(1);
		} catch (IOException ex) {
			System.err.println("Could not modify file. Please ensure you have permission.");
			System.exit(1);
		} catch (DirectoryException ex) {
			System.err.println("Could not modify internal dex files. Please ensure you have permission.");
			System.exit(1);
		} catch (AndrolibException ex) {
		} finally {
			try {
				decoder.close();
			} catch (IOException ignored) {
			}
		}
	}

	public static void Recompile(String decompiledFolderStr, String apkOutFileStr) {

		File outFile = new File(apkOutFileStr);
		BuildOptions buildOptions = new BuildOptions();

		buildOptions.forceBuildAll = true;
		buildOptions.verbose = true;

		// try and build apk
		try {
			new Androlib(buildOptions).build(new File(decompiledFolderStr), outFile);
		} catch (BrutException ex) {
			System.err.println(ex.getMessage());
			System.exit(1);
		}
	}

}
