package modder

import org.apache.commons.io.FileUtils
import java.io.File
import java.io.IOException
import java.nio.file.Files
import java.nio.file.Path

/*
* wrapper class for Files.createTempDirectory
* that automatically delete directory generated
* after jvm exit
*/
object TempManager {

    fun CreateTempDirectory(prefix: String, taskOnExit: TaskOnExit = TaskOnExit.clean): Path {
        val tempDir = Files.createTempDirectory(prefix)
        // make sure we have the absolute path
        // https://stackoverflow.com/a/17552395/14073678
        val tempPathStr = tempDir.toAbsolutePath().toString()
        // =============================================================
        // add a destructor to cleanup the temp folder after program exit
        // since deleteOnExit can only delete if its folder is empty
        // https://stackoverflow.com/a/20280989/14073678
        // the only solution seems to be deleting the temp folder
        // recursively on shutdown
        // https://stackoverflow.com/questions/11165253/deleting-a-directory-on-exit-in-java
        if (taskOnExit == TaskOnExit.clean) {
            Runtime.getRuntime().addShutdownHook(
                    object : Thread() {
                        override fun run() {
                            try {
                                FileUtils.deleteDirectory(File(tempPathStr))
                            } catch (e: IOException) {
                                System.out.printf("Exception when cleaning up temp directory at %s\n",
                                        tempPathStr)
                            }
                        }
                    }
            )
        }
        return tempDir
    }

    enum class TaskOnExit {
        // no cleanup for temp folder
        none,

        // clean up temp folder created on exit
        clean
    }
}
