package com.kuhakupixel.atg.backend

import kotlin.Throws
import kotlin.jvm.Synchronized

/**
 * Information about available scan type
 * its name and sizes
 */
class NumTypeInfo(var name: String, bitSize: Int) {
    var bitSize: Int

    init {
        this.bitSize = bitSize
    }

    fun GetName(): String {
        return name
    }

    fun GetBitSize(): Int {
        return bitSize
    }
}