package modder

import modder.Patcher.Companion.AddMemScannerConstructorSmaliCode
import modder.Patcher.Companion.LaunchableActivityToSmaliRelativePath
import modder.Patcher.Companion.MemScannerFindInjectionLineNum
import org.junit.jupiter.api.Assertions
import org.junit.jupiter.api.Test
import java.io.File
import java.io.IOException
import java.nio.file.Files

internal class TestPatcher {
    //
    var classLoader = javaClass.classLoader

    // https://stackoverflow.com/a/43415602/14073678
    val testApkPathStr = classLoader.getResource("apk_example/app-debug.apk").file

    //
    val testApkWithNativeLibPathStr = classLoader.getResource("apk_example/apkWithNativeLib.apk").file
    val testApkWithOneArchNativeLibPathStr = classLoader.getResource("apk_example/apkWith_armeabi-v7a_NativeLib.apk").file
    val NATIVE_LIB_TEST_NAME = "lib_test.so"

    //
    val testLibFile = classLoader.getResource("test_file/lib_fakeLib.so").file
    val testLaunchableSmaliFile = classLoader.getResource("test_file/MainActivity.smali").file
    @Test
    fun LaunchableActivityToSmaliRelativePath() {
        var path = ""
        var expectedPath: String = ""
        expectedPath = java.lang.String.join(File.separator, "com", "java", "simpleapp", "MainActivity.smali")
        path = LaunchableActivityToSmaliRelativePath("com.java.simpleapp.MainActivity")
        Assertions.assertEquals(expectedPath, path)
        expectedPath = java.lang.String.join(File.separator, "com", "java", "complexapp", "MainActivity.smali")
        path = LaunchableActivityToSmaliRelativePath("com.java.complexapp.MainActivity")
        Assertions.assertEquals(expectedPath, path)
    }

    @Test
    @Throws(IOException::class)
    fun GetSmaliFolderOfLaunchableActvity() {
        //
        val patcher = Patcher(testApkPathStr)
        val smaliFolder = patcher.GetSmaliFolderOfLaunchableActvity()
        // check the relative path because [GetEntrySmaliPath] will
        // return
        // absolute path
        // this can be easily determined by using "aapt dump bading [apk]"
        // then the main activity will be known,
        // decompile the apk and find the smali file in the directory
        val expectedEndingPath = java.lang.String.join(File.separator, "smali_classes3")
        Assertions.assertEquals(true, smaliFolder.endsWith(expectedEndingPath))
        // final check to see if the path actually exist
        val smaliFolderFile = File(smaliFolder)
        Assertions.assertEquals(true, smaliFolderFile.exists())
    }

    @Test
    @Throws(IOException::class)
    fun GetNativeLibSupportedArchCount() {
        //
        run {
            val patcher = Patcher(testApkPathStr)
            Assertions.assertEquals(0, patcher.GetNativeLibSupportedArchCount())
        }
        run {

            // should support all arch
            val patcher = Patcher(testApkWithNativeLibPathStr)
            Assertions.assertEquals(Patcher.ARCHS.size, patcher.GetNativeLibSupportedArchCount())
        }
        run {
            val patcher = Patcher(testApkWithOneArchNativeLibPathStr)
            Assertions.assertEquals(1, patcher.GetNativeLibSupportedArchCount())
        }
    }

    @Test
    @Throws(IOException::class)
    fun GetEntrySmaliPath() {
        //
        val patcher = Patcher(testApkPathStr)
        val smaliPath = patcher.GetEntrySmaliPath()
        // check the relative path because [GetEntrySmaliPath] will
        // return
        // absolute path
        // this can be easily determined by using "aapt dump bading [apk]"
        // then the main activity will be known,
        // decompile the apk and find the smali file in the directory
        val expectedEndingPath = java.lang.String.join(File.separator, "smali_classes3", "com", "java", "simpleapp",
                "MainActivity.smali")
        Assertions.assertEquals(true, smaliPath.endsWith(expectedEndingPath))
        // final check to see if the path actually exist
        val mainActivitySmaliFile = File(smaliPath)
        Assertions.assertEquals(true, mainActivitySmaliFile.exists())
    }

    @Test
    @Throws(IOException::class)
    fun CreateNativeLibDir() {
        val patcher = Patcher(testApkPathStr)
        val decompiledDirStr = patcher.GetDecompiledApkDirStr()
        val nativeLibDir = File(decompiledDirStr, Patcher.NATIVE_LIB_DIR_NAME)
        Assertions.assertEquals(false, nativeLibDir.exists())
        patcher.CreateNativeLibDir()
        Assertions.assertEquals(true, nativeLibDir.exists())
        // check if directory for every arch has been created in
        // native lib directory
        for (arch in Patcher.ARCHS) {
            val archLibDir = File(nativeLibDir.absolutePath, arch)
            Assertions.assertEquals(true, archLibDir.exists())
        }
    }

    @Test
    @Throws(IOException::class)
    fun CreateNativeLibDir2() {
        val patcher = Patcher(testApkWithOneArchNativeLibPathStr)
        Assertions.assertEquals(1, patcher.GetNativeLibSupportedArchCount())
        patcher.CreateNativeLibDir()
        // shouldn't try new arch because there is already
        // an arch that is supported
        Assertions.assertEquals(1, patcher.GetNativeLibSupportedArchCount())
    }

    @Test
    @Throws(IOException::class)
    fun DoesNativeLibExist() {
        val patcher = Patcher(testApkWithNativeLibPathStr)
        Assertions.assertEquals(true, patcher.DoesNativeLibExist(NATIVE_LIB_TEST_NAME))
        Assertions.assertEquals(false, patcher.DoesNativeLibExist("lib_that_doesnt_exist.so"))
    }

    @Test
    @Throws(IOException::class)
    fun AddFileToNativeLibDir() {
        val patcher = Patcher(testApkPathStr)
        val decompiledDirStr = patcher.GetDecompiledApkDirStr()
        val nativeLibDir = File(decompiledDirStr, Patcher.NATIVE_LIB_DIR_NAME)
        Assertions.assertEquals(false, nativeLibDir.exists())
        patcher.AddFileToNativeLibDir(testLibFile)
        Assertions.assertEquals(true, nativeLibDir.exists())

        // check if directory for every arch has the file
        // that is added
        val addedFileName = File(testLibFile).name
        patcher.IterateNativeLibArchDir { arch: String, archLibDir: File ->
            val addedFile = File(archLibDir.absolutePath, addedFileName)
            Assertions.assertEquals(true, addedFile.exists())
        }
    }

    @Test
    @Throws(IOException::class)
    fun RemoveExtractNativeLibOptions() {
        val patcher = Patcher(testApkPathStr)
        // initially contains extractNativeLib options
        var manifestContent = Files.readString(patcher.GetManifestFile().toPath())
        Assertions.assertEquals(true, manifestContent.contains("android:extractNativeLibs=\"false\""))
        patcher.RemoveExtractNativeLibOptions()
        // test
        manifestContent = Files.readString(patcher.GetManifestFile().toPath())
        Assertions.assertFalse(manifestContent.contains("android:extractNativeLibs=\"false\""))
        Assertions.assertTrue(manifestContent.length > 0)
    }

    @Test
    @Throws(IOException::class)
    fun AddMemScannerLib() {
        val patcher = Patcher(testApkPathStr)

        // mem scanner lib shouldnt exist previously
        Assertions.assertEquals(false, patcher.DoesNativeLibExist(Patcher.MEM_SCANNER_LIB_NAME))
        // add mem scanner lib
        patcher.AddMemScannerLib()
        //
        Assertions.assertEquals(true, patcher.DoesNativeLibExist(Patcher.MEM_SCANNER_LIB_NAME))
    }

    @Test
    @Throws(IOException::class)
    fun AddMemScannerLib2() {
        val patcher = Patcher(testApkWithNativeLibPathStr)
        System.out.printf("the resource dir is: %s\n", Patcher.MEM_SCANNER_LIB_RESOURCE_DIR)
        // mem scanner lib shouldnt exist previously
        Assertions.assertEquals(false, patcher.DoesNativeLibExist(Patcher.MEM_SCANNER_LIB_NAME))
        // but this should exist
        Assertions.assertEquals(true, patcher.DoesNativeLibExist(NATIVE_LIB_TEST_NAME))
        // add mem scanner lib
        patcher.AddMemScannerLib()
        //
        //
        Assertions.assertEquals(true, patcher.DoesNativeLibExist(Patcher.MEM_SCANNER_LIB_NAME))
        // should still exist and not be deleted ...
        Assertions.assertEquals(true, patcher.DoesNativeLibExist(NATIVE_LIB_TEST_NAME))
        Assertions.assertEquals(false, patcher.DoesNativeLibExist("libthatdoesntexist.so"))
    }

    @Test
    @Throws(IOException::class)
    fun GetPackageNameOfLaunchableActivity() {
        val patcher = Patcher(testApkPathStr)
        Assertions.assertEquals("com", patcher.GetPackageNameOfLaunchableActivity())
    }

    @Test
    @Throws(IOException::class)
    fun GetPackageDirOfLaunchableActivity() {
        val patcher = Patcher(testApkPathStr)
        val smaliCodePackageDir = patcher.GetPackageDirOfLaunchableActivity()
        System.out.printf("smali codepackagedir %s\n", smaliCodePackageDir)
        val expectedEndingPath = java.lang.String.join(File.separator, "smali_classes3", "com")
        Assertions.assertEquals(true, smaliCodePackageDir.endsWith(expectedEndingPath))
    }

    @Test
    @Throws(IOException::class)
    fun AddMemScannerSmaliCode() {
        val patcher = Patcher(testApkPathStr)
        val smaliCodePackageDir = patcher.GetPackageDirOfLaunchableActivity()
        val memScannerSmaliCodeDir = File(smaliCodePackageDir, Patcher.MEM_SCANNER_SMALI_DIR_NAME)
        Assertions.assertEquals(false, memScannerSmaliCodeDir.exists())
        patcher.AddMemScannerSmaliCode()
        Assertions.assertEquals(true, memScannerSmaliCodeDir.exists())
        Assertions.assertEquals(true, memScannerSmaliCodeDir.isDirectory)
    }

    @Test
    @Throws(IOException::class)
    fun MemScannerFindInjectionLineNum() {
        val injectionLine = MemScannerFindInjectionLineNum(testLaunchableSmaliFile)
        Assertions.assertEquals(12, injectionLine)
    }

    @Test
    @Throws(IOException::class)
    fun AddMemScannerConstructorSmaliCode() {
        val data = AddMemScannerConstructorSmaliCode(testLaunchableSmaliFile)
        // temporary test
        // assertEquals(187, data.size());
        var memScannerConstructorCodeLine = -1
        var smaliInitConstructorLine = -1
        for (i in data.indices) {
            if (data[i].contains(Patcher.MEM_SCANNER_CONSTRUCTOR_SMALI_CODE)) {
                memScannerConstructorCodeLine = i
            }
            if (data[i].endsWith("constructor <init>()V")) {
                smaliInitConstructorLine = i
            }
        }
        // mem scanner constructor code should be added after the init constructor
        Assertions.assertEquals(1, memScannerConstructorCodeLine - smaliInitConstructorLine)
    }
}
