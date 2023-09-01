package modder

import java.io.*

object Assert {
    
    fun AssertExistAndIsDirectory(dir: File) {
        var errMsg = ""
        if (!dir.exists()) {
            errMsg = String.format("%s directory doesn't exist", dir.absolutePath)
            throw IOException(errMsg)
        }
        if (!dir.isDirectory) {
            errMsg = String.format("%s must be a directory not a file", dir.absolutePath)
            throw IOException(errMsg)
        }
    }

    
    fun AssertExistAndIsFile(dir: File) {
        var errMsg = ""
        if (!dir.exists()) {
            errMsg = String.format("%s directory doesn't exist", dir.absolutePath)
            throw IOException(errMsg)
        }
        if (!dir.isFile) {
            errMsg = String.format("%s must be a file not a directory", dir.absolutePath)
            throw IOException(errMsg)
        }
    }
}
