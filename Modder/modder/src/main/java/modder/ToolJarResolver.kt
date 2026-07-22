package modder

import java.io.File
import java.nio.file.Files

/**
 * Resolves paths to bundled tool JARs (apktool-cli, uber-apk-signer).
 * Tries, in order:
 *   1. Classpath resource at /tools/<name>.jar (extracted to temp dir)
 *   2. java.class.path scan (development / gradle run)
 *   3. URLClassLoader scan (legacy)
 */
object ToolJarResolver {

    data class ToolPaths(val apktoolJar: String, val signerJar: String)
    private var cached: ToolPaths? = null

    fun resolve(): ToolPaths {
        cached?.let { return it }

        val apktool = findJar("apktool-cli-all", "apktool")
            ?: throw RuntimeException(
                "Cannot find apktool-cli-all_*.jar. Expected at /tools/ or on java.class.path")
        val signer = findJar("uber-apk-signer", "signer")
            ?: throw RuntimeException(
                "Cannot find uber-apk-signer-*.jar. Expected at /tools/ or on java.class.path")

        return ToolPaths(apktool, signer).also { cached = it }
    }

    private fun findJar(nameFragment: String, label: String): String? {
        // 1. Try classpath resource /tools/<name>.jar -> extract to temp
        val resourcePath = "/tools/$nameFragment.jar"
        val stream = javaClass.getResourceAsStream(resourcePath)
        if (stream != null) {
            val tempFile = Files.createTempFile("modder-$label-", ".jar").toFile()
            tempFile.deleteOnExit()
            stream.use { input ->
                tempFile.outputStream().use { output -> input.copyTo(output) }
            }
            logger.info { "Extracted $label jar to ${tempFile.absolutePath}" }
            return tempFile.absolutePath
        }

        // 2. Scan java.class.path
        val classPath = System.getProperty("java.class.path") ?: return null
        for (entry in classPath.split(File.pathSeparator)) {
            if (entry.contains(nameFragment) && entry.endsWith(".jar")) {
                logger.info { "Found $label jar on classpath: $entry" }
                return entry
            }
        }

        // 3. Scan URLClassLoader (Gradle run task, IDE)
        val cl = javaClass.classLoader
        if (cl is java.net.URLClassLoader) {
            for (url in cl.urLs) {
                val path = url.path
                if (path.contains(nameFragment) && path.endsWith(".jar")) {
                    logger.info { "Found $label jar via URLClassLoader: $path" }
                    return path
                }
            }
        }

        return null
    }
}
