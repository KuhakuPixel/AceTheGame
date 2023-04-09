package com.java.atg;

import androidx.test.ext.junit.runners.AndroidJUnit4;

import org.junit.Test;
import org.junit.*;
import org.junit.runner.RunWith;

import java.io.IOException;

/**
 * Instrumented test, which will execute on an Android device.
 *
 * @see <a href="http://d.android.com/tools/testing">Testing documentation</a>
 */
@RunWith(AndroidJUnit4.class)
public class ACETest {

    @Test
    public void GetReply() throws IOException, InterruptedException {
        Long pid = ProcUtil.RunBusyProgram();
        ACE.Attach(pid);
        // should be attached and we can get its pid
        Assert.assertEquals(true, ACE.IsAttached());
        Assert.assertEquals(pid, ACE.GetAttachedPid());
        // we should have thread that runs the server
        Assert.assertNotNull(ACE.GetServerThread());

        ACE.Deattach();
        // server's thread shouldn't exist anymore
        Assert.assertNull(ACE.GetServerThread());


    }

    @Test
    public void AttachDeattach() throws IOException, InterruptedException {
        /*
        * test if we can attach and deattach multiple time reliably
        * */
        int attachDeattachCount = 5;
        for (int i = 0;i<attachDeattachCount ;i++){
            Long pid = ProcUtil.RunBusyProgram();
            ACE.Attach(pid);
            Assert.assertEquals(true, ACE.IsAttached());
            Assert.assertEquals(pid, ACE.GetAttachedPid());
            Assert.assertNotNull(ACE.GetServerThread());
            ACE.Deattach();
            Assert.assertNull(ACE.GetServerThread());
        }
    }
}