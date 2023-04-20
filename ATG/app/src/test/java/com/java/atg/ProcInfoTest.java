package com.java.atg;

import com.java.atg.backend.ProcInfo;

import org.junit.Test;
import org.junit.Assert;

/**
 * Example local unit test, which will execute on the development machine (host).
 *
 * @see <a href="http://d.android.com/tools/testing">Testing documentation</a>
 */
public class ProcInfoTest {
    @Test
    public void Parse() {
        /*
        * test if it can correctly get the pid and name
        * even if there is space
        * */

        {
            ProcInfo procInfo = new ProcInfo("1 systemd");
            Assert.assertEquals("1", procInfo.GetPidStr());
            Assert.assertEquals("systemd", procInfo.GetName());

        }

        {
            ProcInfo procInfo = new ProcInfo("5 awesome Proc");
            Assert.assertEquals("5", procInfo.GetPidStr());
            Assert.assertEquals("awesome Proc", procInfo.GetName());
        }

        {
            ProcInfo procInfo = new ProcInfo("666 apk with space");
            Assert.assertEquals("666", procInfo.GetPidStr());
            Assert.assertEquals("apk with space", procInfo.GetName());
        }
    }
}