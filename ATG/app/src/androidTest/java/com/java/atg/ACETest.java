package com.java.atg;

import androidx.test.ext.junit.runners.AndroidJUnit4;

import org.junit.Test;
import org.junit.*;
import org.junit.runner.RunWith;

import java.io.IOException;
import java.util.List;

/**
 * Instrumented test, which will execute on an Android device.
 *
 * @see <a href="http://d.android.com/tools/testing">Testing documentation</a>
 */
@RunWith(AndroidJUnit4.class)
public class ACETest {

    @Test
    public void ListRunningProcs() throws IOException {

        ACE ace = new ACE(ATG.GetContext());
        List<ProcInfo> runningProcs =  ace.ListRunningProc();
        Assert.assertTrue(runningProcs.size() > 1);

    }
    @Test
    public void GetReply() throws IOException, InterruptedException {
        ACE ace = new ACE(ATG.GetContext());
        Long pid = ProcUtil.RunBusyProgram();
        ace.Attach(pid);
        // should be attached and we can get its pid
        Assert.assertEquals(true, ace.IsAttached());
        Assert.assertEquals(pid, ace.GetAttachedPid());
        // we should have thread that runs the server
        Assert.assertNotNull(ace.GetServerThread());

        ace.Deattach();
        // server's thread shouldn't exist anymore
        Assert.assertNull(ace.GetServerThread());


    }

    @Test
    public void AttachDeattach() throws IOException, InterruptedException {
        /*
         * test if we can attach and deattach multiple time reliably
         * */
        ACE ace = new ACE(ATG.GetContext());
        int attachDeattachCount = 5;
        for (int i = 0; i < attachDeattachCount; i++) {
            Long pid = ProcUtil.RunBusyProgram();
            ace.Attach(pid);
            Assert.assertEquals(true, ace.IsAttached());
            Assert.assertEquals(pid, ace.GetAttachedPid());
            Assert.assertNotNull(ace.GetServerThread());
            ace.Deattach();
            Assert.assertNull(ace.GetServerThread());
        }
    }
}