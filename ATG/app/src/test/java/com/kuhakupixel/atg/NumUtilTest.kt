package com.kuhakupixel.atg

import com.kuhakupixel.atg.backend.NumUtil
import org.junit.Assert
import org.junit.Test

/**
 * Example local unit test, which will execute on the development machine (host).
 *
 * @see [Testing documentation](http://d.android.com/tools/testing)
 */
class NumUtilTest {
    @Test
    fun IsHex() {
        // =========== hex ===============
        Assert.assertTrue(NumUtil.IsHex("0x002f"))
        Assert.assertTrue(NumUtil.IsHex("0xf02F"))
        Assert.assertTrue(NumUtil.IsHex("0xfabf"))
        Assert.assertTrue(NumUtil.IsHex("0x7fffd4bA8ffc"))
        Assert.assertTrue(NumUtil.IsHex("0x7fffd4ba8f6c"))
        Assert.assertTrue(NumUtil.IsHex("7fffd4ba8f6c"))
        Assert.assertTrue(NumUtil.IsHex("0X7FFFD4BA8F6C"))
        Assert.assertTrue(NumUtil.IsHex("0X7fffd4ba8f6c"))
        // ============= non hex ==============
        Assert.assertFalse(NumUtil.IsHex("0xGfffd4Za8ffc"))
        Assert.assertFalse(NumUtil.IsHex("HEllo"))
        Assert.assertFalse(NumUtil.IsHex("thisIsString"))
        Assert.assertFalse(NumUtil.IsHex("AnakinSkySleeper"))
        Assert.assertTrue(NumUtil.IsHex("0X7fffd4ba8f6c"))
    }

    @Test
    fun IsNumeric() {
        // =========== numeric ===============
        Assert.assertTrue(NumUtil.IsNumeric("12"))
        Assert.assertTrue(NumUtil.IsNumeric("15"))
        Assert.assertTrue(NumUtil.IsNumeric("-15"))
        Assert.assertTrue(NumUtil.IsNumeric("+15"))
        Assert.assertTrue(NumUtil.IsNumeric("15.231"))
        Assert.assertTrue(NumUtil.IsNumeric("-999.231"))
        Assert.assertTrue(NumUtil.IsNumeric("-0.231"))
        // ============= non numeric ==============
        Assert.assertFalse(NumUtil.IsNumeric("a-0.231"))
        Assert.assertFalse(NumUtil.IsNumeric("hello"))
        Assert.assertFalse(NumUtil.IsNumeric("There"))
        Assert.assertFalse(NumUtil.IsNumeric("0xaa"))
        Assert.assertFalse(NumUtil.IsNumeric("++=2"))
        Assert.assertFalse(NumUtil.IsNumeric("2..3"))
    }
}