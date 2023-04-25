package com.kuhakupixel.atg;

import com.kuhakupixel.atg.backend.NumUtil;

import org.junit.Assert;
import org.junit.Test;

/**
 * Example local unit test, which will execute on the development machine (host).
 *
 * @see <a href="http://d.android.com/tools/testing">Testing documentation</a>
 */
public class NumUtilTest {
    @Test
    public void IsHex() {
        // =========== hex ===============
        Assert.assertTrue(NumUtil.IsHex("0x002f"));
        Assert.assertTrue(NumUtil.IsHex("0xf02F"));
        Assert.assertTrue(NumUtil.IsHex("0xfabf"));
        Assert.assertTrue(NumUtil.IsHex("0x7fffd4bA8ffc"));
        Assert.assertTrue(NumUtil.IsHex("0x7fffd4ba8f6c"));
        Assert.assertTrue(NumUtil.IsHex("7fffd4ba8f6c"));
        Assert.assertTrue(NumUtil.IsHex("0X7FFFD4BA8F6C"));
        Assert.assertTrue(NumUtil.IsHex("0X7fffd4ba8f6c"));
        // ============= non hex ==============
        Assert.assertFalse(NumUtil.IsHex("0xGfffd4Za8ffc"));
        Assert.assertFalse(NumUtil.IsHex("HEllo"));
        Assert.assertFalse(NumUtil.IsHex("thisIsString"));
        Assert.assertFalse(NumUtil.IsHex("AnakinSkySleeper"));
        Assert.assertTrue(NumUtil.IsHex("0X7fffd4ba8f6c"));




    }
}