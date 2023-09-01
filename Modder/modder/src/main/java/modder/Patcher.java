package modder;

import net.lingala.zip4j.ZipFile;
import net.lingala.zip4j.exception.ZipException;
import org.apache.commons.lang3.StringUtils;

import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

// TODO: add a new class to Patcher for specific patch like adding a mem scanner
// called MemScanner 
public class Patcher {

    String apkFilePathStr;
    String decompiledApkDirStr;
    static final String ARCHS[] = new String[]{"x86_64", "x86", "armeabi-v7a", "arm64-v8a"};
    static final String NATIVE_LIB_DIR_NAME = "lib";
    static final String BASE_APK_FILE_NAME = "base.apk";
    static final String ANDROID_MANIFEST_FILE_NAME = "AndroidManifest.xml";
    final Resource resource = new Resource();
    // ======== path to memory scanner engine lib ==============
    /*
     * For concatenating resource file/folder path
     * we can't use File's constructor to do that because
     * the result will be platform independent
     *
     * example: in windows, using File constructor
     *  		and getting the absoulte path string
     *			will return full path starting with 'C:'

     * which is not what expected of
     * `getClass().getResourceAsStream` in `Resource.CopyResourceFile`
     * (has to start with '/')
     */
    // native lib
    static final String MEM_SCANNER_LIB_NAME = "liblib_ACE.so";
    final static String MEM_SCANNER_LIB_RESOURCE_DIR =

            "/" + String.join("/", "AceAndroidLib", "code_to_inject", "lib");
    // smali code
    final static String MEM_SCANNER_SMALI_DIR_NAME = "AceInjector";
    final static String MEM_SCANNER_SMALI_BASE_DIR =

            "/" + String.join("/", "AceAndroidLib", "code_to_inject", "smali", "com");
    final static String MEM_SCANNER_SMALI_ZIP_NAME = MEM_SCANNER_SMALI_DIR_NAME + ".zip";
    final static String MEM_SCANNER_SMALI_RESOURCE_DIR =

            (new File(MEM_SCANNER_SMALI_BASE_DIR, MEM_SCANNER_SMALI_ZIP_NAME)).getAbsolutePath();

    final static String MEM_SCANNER_SMALI_CODE_ZIP_PATH = String.join("/", MEM_SCANNER_SMALI_BASE_DIR, MEM_SCANNER_SMALI_ZIP_NAME);
    final static String MEM_SCANNER_CONSTRUCTOR_SMALI_CODE = "invoke-static {}, Lcom/AceInjector/utils/Injector;->Init()V";
    // ===================

    public Patcher(String apkFilePathStr, TempManager.TaskOnExit tempFolderTaskOnExit) throws IOException {
        File apkFile = new File(apkFilePathStr);
        Assert.AssertExistAndIsFile(apkFile);
        // make sure to get the absolute path
        this.apkFilePathStr = apkFile.getAbsolutePath();

        Path tempDir = TempManager.CreateTempDirectory("ModderDecompiledApk", tempFolderTaskOnExit);
        // make sure we have the absolute path
        // https://stackoverflow.com/a/17552395/14073678
        this.decompiledApkDirStr = tempDir.toAbsolutePath().toString();
        // =============================== decompile the apk ===========
        ApkToolWrap.Decompile(apkFilePathStr, decompiledApkDirStr);
    }

    public Patcher(String apkFilePathStr) throws IOException {
        this(apkFilePathStr, TempManager.TaskOnExit.clean);
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
    public String GetSmaliFolderOfLaunchableActvity() throws RuntimeException, IOException {

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

    public String GetEntrySmaliPath() throws RuntimeException, IOException {

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

    public String[] GetNativeLibSupportedArch() {

        File apkNativeLibDir = new File(this.decompiledApkDirStr, NATIVE_LIB_DIR_NAME);
        if (!apkNativeLibDir.exists())
            return new String[]{};
        // check if the apk already have a native lib for some or allarchitecture
        // if the apk already has native lib for specific arch like "armeabi-v7a"
        // then we shouldn't add a new folder for another arch like arm-64
        // because the apk will choose the arm-64 one and it may not contains
        // the needed library from "armeabi-v7a"
        String[] archs = apkNativeLibDir.list(new FilenameFilter() {
            @Override
            public boolean accept(File current, String name) {
                return new File(current, name).isDirectory();
            }
        });
        return archs;

    }

    public int GetNativeLibSupportedArchCount() {
        return GetNativeLibSupportedArch().length;

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

        // check if the apk already have a native lib for some or all architecture
        // if the apk already has native lib for specific arch like "armeabi-v7a"
        // then we shouldn't add a new folder for another arch like arm-64
        // because the apk will choose the arm-64 one and it may not contains
        // the needed library from "armeabi-v7a"
        String[] archs = apkNativeLibDir.list(new FilenameFilter() {
            @Override
            public boolean accept(File current, String name) {
                return new File(current, name).isDirectory();
            }
        });
        // don't add new arch folder, just return
        if (archs.length > 0)
            return apkNativeLibDir.getAbsolutePath();
        // otherwise add native lib folder for each arch
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
        String[] supportedArch = GetNativeLibSupportedArch();
        for (String arch : supportedArch) {
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
        // TODO: add test for apk that support one arch only
        this.IterateNativeLibArchDir(

                (String arch, File archLibFolder) -> {
                    File destFile = new File(archLibFolder.getAbsolutePath(), MEM_SCANNER_LIB_NAME);
                    // String srcFile = Paths.get(MEM_SCANNER_LIB_RESOURCE_DIR, arch,
                    // MEM_SCANNER_LIB_NAME)
                    // .toAbsolutePath()
                    // .toString();
                    String srcFile = String.join("/", MEM_SCANNER_LIB_RESOURCE_DIR, arch, MEM_SCANNER_LIB_NAME);
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

    public boolean DoesNativeLibExist(String libName) throws IOException {

        // need to use wrapper to accsess variable
        // from inside lambda
        var wrapper = new Object() {
            boolean libExistInAllArch = true;
        };

        this.IterateNativeLibArchDir(

                (String arch, File archLibFolder) -> {
                    File libFile = new File(archLibFolder.getAbsolutePath(), libName);
                    if (!libFile.exists())
                        wrapper.libExistInAllArch = false;

                }

        );
        return wrapper.libExistInAllArch;

    }

    public String GetPackageNameOfLaunchableActivity() throws IOException {

        // find launchable activity
        String launchableActivity = Aapt.GetLaunchableActivity(apkFilePathStr);
        // just exit if can't get a launchable activity
        if (StringUtils.isEmpty(launchableActivity)) {
            String errMsg = String.format("Cannot find launchable activity from apk %s", apkFilePathStr);
            throw new RuntimeException(errMsg);
        }

        // because split takes a regex string
        // to actually split by '.' we need to escape it first
        String packageName = launchableActivity.split("\\.")[0];
        return packageName;
    }

    public String GetPackageDirOfLaunchableActivity() throws IOException {

        String packageName = GetPackageNameOfLaunchableActivity();
        String smaliBaseDir = GetSmaliFolderOfLaunchableActvity();

        File smaliCodePackageDir = new File(smaliBaseDir, packageName);
        return smaliCodePackageDir.getAbsolutePath();
    }

    public void AddMemScannerSmaliCode() throws IOException {
        // path to copy the smali constructor to
        String smaliCodePackageDir = GetPackageDirOfLaunchableActivity();

        // copy the zip code of smali constructor from resources
        // unextract it in a temp folder and then copy to
        // the apk
        String tempDir = TempManager.CreateTempDirectory("TempSmalifolder").toString();
        //
        File destSmaliZipCode = new File(tempDir, MEM_SCANNER_SMALI_ZIP_NAME);
        resource.CopyResourceFile(MEM_SCANNER_SMALI_CODE_ZIP_PATH, destSmaliZipCode.getAbsolutePath());

        String destDir = new File(smaliCodePackageDir, MEM_SCANNER_SMALI_DIR_NAME).getAbsolutePath();

        try {
            ZipFile zipFile = new ZipFile(destSmaliZipCode.getAbsolutePath());
            zipFile.extractAll(destDir);
            System.out.printf("extracted to %s\n", destDir);
            zipFile.close();
        } catch (ZipException e) {
            e.printStackTrace();
        }

        System.out.printf("copying resource to %s\n", destDir);

    }

    public static int MemScannerFindInjectionLineNum(String launchableSmaliFile) throws IOException {
        Path entrySmaliPath = new File(launchableSmaliFile).toPath();
        List<String> fileData = Files.readAllLines(entrySmaliPath, Charset.defaultCharset());
        for (int i = 0; i < fileData.size(); i++) {
            String code = fileData.get(i);
            if (code.endsWith("constructor <init>()V"))
                return i;

        }
        return -1;
    }

    public static List<String> AddMemScannerConstructorSmaliCode(String launchableSmaliFile) throws IOException {
        Path entrySmaliPath = new File(launchableSmaliFile).toPath();
        List<String> fileData = Files.readAllLines(entrySmaliPath, Charset.defaultCharset());
        int injectionLine = MemScannerFindInjectionLineNum(launchableSmaliFile);
        fileData.add(injectionLine + 1, Patcher.MEM_SCANNER_CONSTRUCTOR_SMALI_CODE);
        return fileData;

    }

    public void AddMemScanner() throws IOException {
        this.AddMemScannerLib();
        this.AddMemScannerSmaliCode();

        // add constructor to start the memory scanner
        // server to the init function of smali launchable file
        String entrySmaliPathStr = this.GetEntrySmaliPath();
        Path entrySmaliPath = Paths.get(entrySmaliPathStr);
        List<String> modifiedSmaliCode = Patcher.AddMemScannerConstructorSmaliCode(entrySmaliPathStr);
        // rewrite file
        Files.write(entrySmaliPath, modifiedSmaliCode);
    }
    public File GetManifestFile(){
       return  new File(this.decompiledApkDirStr, ANDROID_MANIFEST_FILE_NAME);
    }

    public void RemoveExtractNativeLibOptions() throws IOException {
        File manifestFile = GetManifestFile();
        String manifestContent = Files.readString(manifestFile.toPath());
        // remove the options all toget
        String newManifestContent = manifestContent.replace("android:extractNativeLibs=\"false\"", "");
        // warning if nothing is removed
        if (manifestContent == newManifestContent) {
            System.out.println("extractNativeLibs options not found");
        }
        try (PrintWriter out = new PrintWriter(manifestFile.getAbsolutePath())) {
            out.println(newManifestContent);
        }
    }

    public void Export(String exportPath) {
        File exportFile = new File(exportPath);

        ApkToolWrap.Recompile(this.decompiledApkDirStr, exportFile.getAbsolutePath());
        System.out.printf("exported to %s\n", exportFile.getAbsolutePath());


    }

}
