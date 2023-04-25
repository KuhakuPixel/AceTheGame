package com.kuhakupixel.atg;

import android.content.Context;

import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.platform.app.InstrumentationRegistry;

import com.kuhakupixel.atg.backend.ACE;
import com.kuhakupixel.atg.backend.ACEClient;
import com.kuhakupixel.atg.backend.NumTypeInfo;
import com.kuhakupixel.atg.backend.ProcInfo;
import com.kuhakupixel.atg.backend.ProcUtil;

import org.junit.Test;
import org.junit.*;
import org.junit.runner.RunWith;

import java.io.IOException;
import java.util.ArrayList;
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

        Context context = InstrumentationRegistry.getInstrumentation().getTargetContext();
        ACE ace = new ACE(context);
        List<ProcInfo> runningProcs = ace.ListRunningProc();
        Assert.assertTrue(runningProcs.size() > 1);

    }

    @Test
    public void GetReply() throws IOException, InterruptedException {
        Context context = InstrumentationRegistry.getInstrumentation().getTargetContext();
        ACE ace = new ACE(context);
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
    public void InvalidCommandException() throws IOException, InterruptedException {
        Context context = InstrumentationRegistry.getInstrumentation().getTargetContext();
        ACE ace = new ACE(context);
        Process p = ProcUtil.RunBusyProgram();
        Long pid = ProcUtil.GetPid(p);
        ace.Attach(pid);

        List<String> invalidCmd = new ArrayList<String>();
        invalidCmd.add("ThisCommandDoesntExist");
        invalidCmd.add("wifijif20");
        invalidCmd.add("Randommm");
        // "scan" valid command, but complete argument is required
        invalidCmd.add("scan");
        invalidCmd.add("scan =");
        // for commands that requires attach
        for (String s : invalidCmd) {
            try {
                ace.CheaterCmd(s);
                Assert.fail();
            } catch (ACEClient.InvalidCommandException e) {
                Assert.assertTrue(true);
            }
        }
        // for commands that don't require attach
        for (String s : invalidCmd) {
            try {
                ace.MainCmd(s);
                Assert.fail();
            } catch (ACEClient.InvalidCommandException e) {
                Assert.assertTrue(true);
            }
        }
        ace.DeAttach();


    }
    @Test
    public void ValidCommand() throws IOException, InterruptedException {
        Context context = InstrumentationRegistry.getInstrumentation().getTargetContext();
        ACE ace = new ACE(context);
        Process p = ProcUtil.RunBusyProgram();
        Long pid = ProcUtil.GetPid(p);
        ace.Attach(pid);
        // valid command
        try {
            ace.CheaterCmd("scan = 0");
            Assert.assertTrue(true);
        } catch (ACEClient.InvalidCommandException e) {
            Assert.fail();
        }
        ace.DeAttach();


    }
    @Test
    public void SetNumType() throws IOException, InterruptedException {
        Context context = InstrumentationRegistry.getInstrumentation().getTargetContext();
        ACE ace = new ACE(context);
        Process p = ProcUtil.RunBusyProgram();
        Long pid = ProcUtil.GetPid(p);
        ace.Attach(pid);
        // shouldn't throw any exception ...
        for(ACE.NumType numType : ACE.NumType.values()) {
            ace.SetNumType(numType);
        }
        ace.DeAttach();


    }

    @Test
    public void AttachDeattach() throws IOException, InterruptedException {
        /*
         * test if we can attach and deattach multiple time reliably
         * */
        Context context = InstrumentationRegistry.getInstrumentation().getTargetContext();
        ACE ace = new ACE(context);
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
        Context context = InstrumentationRegistry.getInstrumentation().getTargetContext();
        ACE ace = new ACE(context);
        Process p = ProcUtil.RunBusyProgram();
        Long pid = ProcUtil.GetPid(p);
        Assert.assertTrue(ace.IsPidRunning(pid));
        p.destroy();
        Assert.assertFalse(ace.IsPidRunning(pid));

    }

    @Test
    public void AttachInARowException() throws IOException {

        Context context = InstrumentationRegistry.getInstrumentation().getTargetContext();
        ACE ace = new ACE(context);
        Process p = ProcUtil.RunBusyProgram();
        Long pid = ProcUtil.GetPid(p);
        //
        ace.Attach(pid);
        // can't Attach in a row without DeAttaching first
        try {
            ace.Attach(pid);
            Assert.fail();
        } catch (ACE.AttachingInARowException e) {
            Assert.assertTrue(true);
        }
        // cleanup
        p.destroy();

    }

    @Test
    public void DeAttachingWithoutAttachException() throws IOException, InterruptedException {

        Context context = InstrumentationRegistry.getInstrumentation().getTargetContext();
        ACE ace = new ACE(context);
        Process p = ProcUtil.RunBusyProgram();
        // can't DeAttach without Attach first
        try {
            ace.DeAttach();
            Assert.fail();
        } catch (ACE.NoAttachException e) {
            Assert.assertTrue(true);
        }
        // cleanup
        p.destroy();

    }

    @Test
    public void OperationRequiresAttach() throws IOException {

        Context context = InstrumentationRegistry.getInstrumentation().getTargetContext();
        ACE ace = new ACE(context);
        Process p = ProcUtil.RunBusyProgram();
        // can't do operation without Attach first
        try {
            ace.GetAttachedPid();
            Assert.fail();
        } catch (ACE.NoAttachException e) {
            Assert.assertTrue(true);
        }
        // cleanup
        p.destroy();

    }

    @Test
    public void GetAvailableNumTypes() throws IOException {
        Context context = InstrumentationRegistry.getInstrumentation().getTargetContext();
        ACE ace = new ACE(context);
        List<NumTypeInfo> availableTypes = ace.GetAvailableNumTypes();

        // need to have at least 8, 16 and 32 bit number type
        Assert.assertTrue(
                availableTypes.stream().anyMatch(o -> o.GetBitSize().equals(8))
        );
        Assert.assertTrue(
                availableTypes.stream().anyMatch(o -> o.GetBitSize().equals(16))
        );

        Assert.assertTrue(
                availableTypes.stream().anyMatch(o -> o.GetBitSize().equals(32))
        );
    }

    @Test
    public void GetAvailableOperatorTypes() throws IOException {
        Context context = InstrumentationRegistry.getInstrumentation().getTargetContext();
        ACE ace = new ACE(context);
        List<ACE.Operator> availableTypes = ace.GetAvailableOperatorTypes();

        // assert that the engine support all operation types that
        // we have listed
        for (ACE.Operator op : ACE.Operator.values()) {
            Assert.assertTrue(availableTypes.contains(op));
        }
    }


}