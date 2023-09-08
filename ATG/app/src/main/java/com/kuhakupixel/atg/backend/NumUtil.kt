package com.kuhakupixel.atg.backend

import kotlin.Throws
import Shell.Result
import kotlin.jvm.Synchronized

object NumUtil {
    private const val HexStartFormat = "0x"

    /**
     * Check whether [s] is a hexadecimal
     * it supports hexadecimal string that starts either or without "0x"
     * https://stackoverflow.com/questions/2670639/why-are-hexadecimal-numbers-prefixed-with-0x
     */
    fun IsHex(s: String): Boolean {
        var s = s
        s = s.toLowerCase()
        if (s.startsWith(HexStartFormat)) s = s.substring(HexStartFormat.length())
        return s.matches("-?[0-9a-fA-F]+")
    }

    fun IsNumeric(s: String?): Boolean {
        return try {
            Double.parseDouble(s)
            true
        } catch (e: NumberFormatException) {
            false
        }
    }
}