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
        Process p = ProcUtil.RunBusyProgram();
        Long pid = ProcUtil.GetPid(p);
        ace.Attach(pid);
        // should be attached and we can get its pid
        Assert.assertEquals(true, ace.IsAttached());
        Assert.assertEquals(pid, ace.GetAttachedPid());
        // we should have thread that runs the server
        Assert.assertNotNull(ace.GetServerThread());

        ace.DeAttach();
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
            Process p = ProcUtil.RunBusyProgram();
            Long pid = ProcUtil.GetPid(p);
            ace.Attach(pid);
            Assert.assertEquals(true, ace.IsAttached());
            Assert.assertEquals(pid, ace.GetAttachedPid());
            Assert.assertNotNull(ace.GetServerThread());
            ace.DeAttach();
            Assert.assertNull(ace.GetServerThread());
        }
    }

    @Test
    public void IsPidRunning() throws IOException, InterruptedException {
        /*
         * test if we can attach and deattach multiple time reliably
         * */
        ACE ace = new ACE(ATG.GetContext());
        Process p = ProcUtil.RunBusyProgram();
        Long pid = ProcUtil.GetPid(p);
        Assert.assertTrue(ace.IsPidRunning(pid));
        p.destroy();
        Assert.assertFalse(ace.IsPidRunning(pid));

    }

    @Test
    public void AttachInARowException() throws IOException {

        ACE ace = new ACE(ATG.GetContext());
        Process p = ProcUtil.RunBusyProgram();
        Long pid = ProcUtil.GetPid(p);
        //
        ace.Attach(pid);
        // can't Attach in a row without DeAttaching first
        try {
            ace.Attach(pid);
            Assert.fail();
        }catch(ACE.AttachingInARowException e){
           Assert.assertTrue(true);
        }
        // cleanup
        p.destroy();

    }

    @Test
    public void DeAttachingWithoutAttachException() throws IOException, InterruptedException {

        ACE ace = new ACE(ATG.GetContext());
        Process p = ProcUtil.RunBusyProgram();
        // can't DeAttach without Attach first
        try {
            ace.DeAttach();
            Assert.fail();
        }catch(ACE.NoAttachException e){
            Assert.assertTrue(true);
        }
        // cleanup
        p.destroy();

    }
    @Test
    public void OperationRequiresAttach() throws IOException{

        ACE ace = new ACE(ATG.GetContext());
        Process p = ProcUtil.RunBusyProgram();
        // can't do operation without Attach first
        try {
            ace.GetAttachedPid();
            Assert.fail();
        }catch(ACE.NoAttachException e){
            Assert.assertTrue(true);
        }
        // cleanup
        p.destroy();

    }


}