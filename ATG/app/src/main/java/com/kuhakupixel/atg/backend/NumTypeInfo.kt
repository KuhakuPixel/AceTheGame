package com.kuhakupixel.atg.backend

import kotlin.Throws
import Shell.Result
import kotlin.jvm.Synchronized

/**
 * Information about available scan type
 * its name and sizes
 */
class NumTypeInfo(var name: String, bitSize: Integer) {
    var bitSize: Integer

    init {
        this.bitSize = bitSize
    }

    fun GetName(): String {
        return name
    }

    fun GetBitSize(): Integer {
        return bitSize
    }
}