package com.kuhakupixel.atg;

import android.content.Context;

import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.platform.app.InstrumentationRegistry;

import com.kuhakupixel.atg.backend.ACE;
import com.kuhakupixel.atg.backend.ACEAttachClient;
import com.kuhakupixel.atg.backend.ACEServer;
import com.kuhakupixel.atg.backend.NumTypeInfo;
import com.kuhakupixel.atg.backend.NumUtil;
import com.kuhakupixel.atg.backend.Port;
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
    public void NumTypeEnumStringConversion() throws IOException {
        Assert.assertEquals("int", ACE.NumType._int.toString());
        Assert.assertEquals("byte", ACE.NumType._byte.toString());
        Assert.assertEquals(ACE.NumType._long, ACE.NumType.fromString("long"));
        Assert.assertEquals(ACE.NumType._long, ACE.NumType.fromString("_long"));
        Assert.assertEquals(ACE.NumType._float, ACE.NumType.fromString("float"));
        Assert.assertEquals(ACE.NumType._float, ACE.NumType.fromString("_float"));


    }

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
        ace.DeAttach();
        Assert.assertEquals(false, ace.IsAttached());

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
            } catch (ACEAttachClient.InvalidCommandException e) {
                Assert.assertTrue(true);
            }
        }
        // for commands that don't require attach
        for (String s : invalidCmd) {
            try {
                ace.UtilCmd(new String[]{s});
                Assert.fail();
            } catch (ACEAttachClient.InvalidCommandException e) {
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
        } catch (ACEAttachClient.InvalidCommandException e) {
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
        for (ACE.NumType numType : ACE.NumType.values()) {
            ace.SetNumType(numType);
        }
        ace.DeAttach();


    }

    @Test
    public void GetNumTypeBitSize() throws IOException, InterruptedException {
        Context context = InstrumentationRegistry.getInstrumentation().getTargetContext();
        ACE ace = new ACE(context);
        for (ACE.NumType numType : ACE.NumType.values()) {
            Assert.assertNotNull(ace.GetNumTypeBitSize(numType));
        }
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
            //
            ace.Attach(pid);
            //
            Assert.assertEquals(true, ace.IsAttached());
            Assert.assertEquals(pid, ace.GetAttachedPid());
            //
            ace.DeAttach();
            Assert.assertEquals(false, ace.IsAttached());
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
    public void ConnectToACEServer() throws IOException, InterruptedException {
        Context context = InstrumentationRegistry.getInstrumentation().getTargetContext();
        ACE ace = new ACE(context);
        Process p = ProcUtil.RunBusyProgram();
        Long pid = ProcUtil.GetPid(p);
        // start ACE server and connect to it
        Integer port = Port.GetOpenPort();
        Thread serverThread = ACEServer.GetStarterThread(context, pid, port);
        serverThread.start();

        //
        Assert.assertEquals(false, ace.IsAttached());
        //
        ace.ConnectToACEServer(port);
        //
        Assert.assertEquals(true, ace.IsAttached());
        //
        ace.DeAttach();
        //
        Assert.assertEquals(false, ace.IsAttached());
        p.destroy();
    }

    @Test
    public void ExceptionWhenConnectToACEServer() throws IOException, InterruptedException {
        Context context = InstrumentationRegistry.getInstrumentation().getTargetContext();
        Process p = ProcUtil.RunBusyProgram();
        Long pid = ProcUtil.GetPid(p);
        // attach in a row exception
        {
            ACE ace = new ACE(context);
            // start ACE server and connect to it
            Integer port = Port.GetOpenPort();
            Thread serverThread = ACEServer.GetStarterThread(context, pid, port);
            serverThread.start();

            //
            ace.ConnectToACEServer(port);
            try {
                ace.ConnectToACEServer(port);
                Assert.fail();
            } catch (ACE.AttachingInARowException e) {
                Assert.assertTrue(true);
            }
            // DeAttach and stop server
            ace.DeAttach();
            serverThread.join();
        }
        // DeAttach without attach
        {
            ACE ace = new ACE(context);
            // start ACE server and connect to it
            Integer port = Port.GetOpenPort();
            Thread serverThread = ACEServer.GetStarterThread(context, pid, port);
            serverThread.start();

            try {
                ace.DeAttach();
                Assert.fail();
            } catch (ACE.NoAttachException e) {
                Assert.assertTrue(true);
            }

            // Connect to DeAttach and stop server
            ace.ConnectToACEServer(port);
            ace.DeAttach();
            serverThread.join();

        }

        p.destroy();
    }

    @Test
    public void AttachInARowException() throws IOException, InterruptedException {

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
        ace.DeAttach();
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

    // TODO: add test for all number types :)
    @Test
    public void ScanAndGetMatches() throws IOException, InterruptedException {
        Context context = InstrumentationRegistry.getInstrumentation().getTargetContext();
        ACE ace = new ACE(context);
        Process p = ProcUtil.RunBusyProgram();
        Long pid = ProcUtil.GetPid(p);
        ace.Attach(pid);
        // shoudlnt have any matches before scan
        Assert.assertEquals((Integer) 0, ace.GetMatchCount());
        ace.ScanAgainstValue(ACE.Operator.notEqual, "0");
        // now we should have some matches
        Assert.assertTrue(ace.GetMatchCount() > 0);

        // ====================
        ace.DeAttach();
    }

    @Test
    public void ScanAndGetMatchesList() throws IOException, InterruptedException {
        // ============== init ==================
        // nothing special, just some random number
        Integer maxMatchesCount = 2;
        //
        Context context = InstrumentationRegistry.getInstrumentation().getTargetContext();
        ACE ace = new ACE(context);
        Process p = ProcUtil.RunBusyProgram();
        Long pid = ProcUtil.GetPid(p);
        ace.Attach(pid);
        // shouldn't have any matches before scan
        Assert.assertEquals((Integer) 0, ace.GetMatchCount());
        ace.ScanAgainstValue(ACE.Operator.notEqual, "0");
        // get matches
        List<ACE.MatchInfo> matches = ace.ListMatches(maxMatchesCount);
        // the actual matches count will be bigger than [maxMatchesCount]
        // but we can limit how many matches we get from the engine
        // for performance reason
        Assert.assertTrue(ace.GetMatchCount() > maxMatchesCount);
        Assert.assertEquals((int) maxMatchesCount, matches.size());
        for (ACE.MatchInfo matchInfo : matches) {
            // address must be hex and the previous value must be normal numeric
            Assert.assertTrue(NumUtil.IsHex(matchInfo.getAddress()));
            Assert.assertTrue(NumUtil.IsNumeric(matchInfo.getPrevValue()));
        }

        // ====================
        ace.DeAttach();
    }

    @Test
    public void ScanAndResetMatches() throws IOException, InterruptedException {
        Context context = InstrumentationRegistry.getInstrumentation().getTargetContext();
        ACE ace = new ACE(context);
        Process p = ProcUtil.RunBusyProgram();
        Long pid = ProcUtil.GetPid(p);
        ace.Attach(pid);
        // shoudlnt have any matches before scan
        Assert.assertEquals((Integer) 0, ace.GetMatchCount());
        ace.ScanAgainstValue(ACE.Operator.notEqual, "0");
        // now we should have some matches
        Assert.assertTrue(ace.GetMatchCount() > 0);
        ace.ResetMatches();
        // matches should be 0 now
        Assert.assertEquals((Integer) 0, ace.GetMatchCount());
        // ====================
        ace.DeAttach();
    }


}