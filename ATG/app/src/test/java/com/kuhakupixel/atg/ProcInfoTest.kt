package com.kuhakupixel.atg

import com.kuhakupixel.atg.backend.ProcInfo
import org.junit.Assert
import org.junit.Test

/**
 * Example local unit test, which will execute on the development machine (host).
 *
 * @see [Testing documentation](http://d.android.com/tools/testing)
 */
class ProcInfoTest {
    @Test
    fun Parse() {
        /*
        * test if it can correctly get the pid and name
        * even if there is space
        * */
        run {
            val procInfo = ProcInfo("1 systemd")
            Assert.assertEquals("1", procInfo.GetPidStr())
            Assert.assertEquals("systemd", procInfo.GetName())
        }
        run {
            val procInfo = ProcInfo("5 awesome Proc")
            Assert.assertEquals("5", procInfo.GetPidStr())
            Assert.assertEquals("awesome Proc", procInfo.GetName())
        }
        run {
            val procInfo = ProcInfo("666 apk with space")
            Assert.assertEquals("666", procInfo.GetPidStr())
            Assert.assertEquals("apk with space", procInfo.GetName())
        }
    }
}