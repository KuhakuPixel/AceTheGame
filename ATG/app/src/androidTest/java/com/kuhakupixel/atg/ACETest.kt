package com.kuhakupixel.atg

import android.content.Context
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import com.kuhakupixel.atg.backend.ACE
import com.kuhakupixel.atg.backend.ACEBaseClient
import com.kuhakupixel.atg.backend.ACEServer
import com.kuhakupixel.atg.backend.NumTypeInfo
import com.kuhakupixel.atg.backend.NumUtil
import com.kuhakupixel.atg.backend.Port
import com.kuhakupixel.atg.backend.ProcInfo
import com.kuhakupixel.atg.backend.ProcUtil
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith

/**
 * Instrumented test, which will execute on an Android device.
 *
 * @see [Testing documentation](http://d.android.com/tools/testing)
 */
@RunWith(AndroidJUnit4::class)
class ACETest {
    @Test
    fun NumTypeEnumStringConversion() {
        Assert.assertEquals("int", ACE.NumType._int.toString())
        Assert.assertEquals("byte", ACE.NumType._byte.toString())
        Assert.assertEquals(ACE.NumType._long, ACE.NumType.fromString("long"))
        Assert.assertEquals(ACE.NumType._long, ACE.NumType.fromString("_long"))
        Assert.assertEquals(ACE.NumType._float, ACE.NumType.fromString("float"))
        Assert.assertEquals(ACE.NumType._float, ACE.NumType.fromString("_float"))
    }

    @Test
    fun ListRunningProcs() {
        val context: Context = InstrumentationRegistry.getInstrumentation().getTargetContext()
        val ace = ACE(context)
        val runningProcs: List<ProcInfo> = ace.ListRunningProc()
        Assert.assertTrue(runningProcs.size > 1)
    }

    @Test
    fun GetReply() {
        val context: Context = InstrumentationRegistry.getInstrumentation().getTargetContext()
        val ace = ACE(context)
        val p: Process = ProcUtil.RunBusyProgram()
        val pid: Long = ProcUtil.GetPid(p)
        ace.Attach(pid)
        // should be attached and we can get its pid
        Assert.assertEquals(true, ace.IsAttached())
        Assert.assertEquals(pid, ace.GetAttachedPid())
        ace.DeAttach()
        Assert.assertEquals(false, ace.IsAttached())
    }

    @Test
    fun InvalidCommandException() {
        val context: Context = InstrumentationRegistry.getInstrumentation().getTargetContext()
        val ace = ACE(context)
        val p: Process = ProcUtil.RunBusyProgram()
        val pid: Long = ProcUtil.GetPid(p)
        ace.Attach(pid)
        val invalidCmd: MutableList<String> = mutableListOf()
        invalidCmd.add("ThisCommandDoesntExist")
        invalidCmd.add("wifijif20")
        invalidCmd.add("Randommm")
        // "scan" valid command, but complete argument is required
        invalidCmd.add("scan")
        invalidCmd.add("scan =")
        // for commands that requires attach
        for (s in invalidCmd) {
            try {
                ace.CheaterCmd(arrayOf(s))
                Assert.fail()
            } catch (e: ACEBaseClient.InvalidCommandException) {
                Assert.assertTrue(true)
            }
        }
        // for commands that don't require attach
        for (s in invalidCmd) {
            try {
                ace.UtilCmd(arrayOf(s))
                Assert.fail()
            } catch (e: ACEBaseClient.InvalidCommandException) {
                Assert.assertTrue(true)
            }
        }
        ace.DeAttach()
    }

    @Test
    fun ValidCommand() {
        val context: Context = InstrumentationRegistry.getInstrumentation().getTargetContext()
        val ace = ACE(context)
        val p: Process = ProcUtil.RunBusyProgram()
        val pid: Long = ProcUtil.GetPid(p)
        ace.Attach(pid)
        // valid command
        try {
            ace.CheaterCmd(arrayOf("scan = 0"))
            Assert.assertTrue(true)
        } catch (e: ACEBaseClient.InvalidCommandException) {
            Assert.fail()
        }
        ace.DeAttach()
    }

    @Test
    fun SetNumType() {
        val context: Context = InstrumentationRegistry.getInstrumentation().getTargetContext()
        val ace = ACE(context)
        val p: Process = ProcUtil.RunBusyProgram()
        val pid: Long = ProcUtil.GetPid(p)
        ace.Attach(pid)
        // shouldn't throw any exception ...
        for (numType in ACE.NumType.values()) {
            ace.SetNumType(numType)
            Assert.assertEquals(numType, ace.GetNumType())
        }
        ace.DeAttach()
    }

    @Test
    fun SetRegionLevel() {
        val context: Context = InstrumentationRegistry.getInstrumentation().getTargetContext()
        val ace = ACE(context)
        val p: Process = ProcUtil.RunBusyProgram()
        val pid: Long = ProcUtil.GetPid(p)
        ace.Attach(pid)
        for (regionLevel in ACE.RegionLevel.values()) {
            ace.SetRegionLevel(regionLevel)
            Assert.assertEquals(regionLevel, ace.GetRegionLevel())
        }
        ace.DeAttach()
    }

    @Test

    fun GetNumTypeBitSize() {
        val context: Context = InstrumentationRegistry.getInstrumentation().getTargetContext()
        val ace = ACE(context)
        for (numType in ACE.NumType.values()) {
            Assert.assertNotNull(ace.GetNumTypeBitSize(numType))
        }
    }

    @Test

    fun AttachDeattach() {
        /*
         * test if we can attach and deattach multiple time reliably
         * */
        val context: Context = InstrumentationRegistry.getInstrumentation().getTargetContext()
        val ace = ACE(context)
        val attachDeattachCount = 5
        for (i in 0 until attachDeattachCount) {
            val p: Process = ProcUtil.RunBusyProgram()
            val pid: Long = ProcUtil.GetPid(p)
            //
            ace.Attach(pid)
            //
            Assert.assertEquals(true, ace.IsAttached())
            Assert.assertEquals(pid, ace.GetAttachedPid())
            //
            ace.DeAttach()
            Assert.assertEquals(false, ace.IsAttached())
        }
    }

    @Test

    fun IsPidRunning() {
        /*
         * test if we can attach and deattach multiple time reliably
         * */
        val context: Context = InstrumentationRegistry.getInstrumentation().getTargetContext()
        val ace = ACE(context)
        val p: Process = ProcUtil.RunBusyProgram()
        val pid: Long = ProcUtil.GetPid(p)
        Assert.assertTrue(ace.IsPidRunning(pid))
        p.destroy()
        Assert.assertFalse(ace.IsPidRunning(pid))
    }

    @Test

    fun ConnectToACEServer() {
        val context: Context = InstrumentationRegistry.getInstrumentation().getTargetContext()
        val ace = ACE(context)
        val p: Process = ProcUtil.RunBusyProgram()
        val pid: Long = ProcUtil.GetPid(p)
        // start ACE server and connect to it
        val ports: List<Int> = Port.GetOpenPorts(2)
        val serverThread: Thread = ACEServer.GetStarterThread(context, pid, ports[0], ports[1])
        serverThread.start()

        // not attached yet, and port hasn't been set
        Assert.assertEquals(false, ace.IsAttached())
        Assert.assertEquals(null, ace.getStatusPublisherPort())
        // connect
        ace.ConnectToACEServer(port = ports[0], publisherPort = ports[1])

        // attached and port has been set
        Assert.assertEquals(true, ace.IsAttached())
        Assert.assertNotEquals(null, ace.getStatusPublisherPort())
        //
        ace.DeAttach()
        //
        Assert.assertEquals(false, ace.IsAttached())
        p.destroy()
    }

    @Test

    fun ExceptionWhenConnectToACEServer() {
        val context: Context = InstrumentationRegistry.getInstrumentation().getTargetContext()
        val p: Process = ProcUtil.RunBusyProgram()
        val pid: Long = ProcUtil.GetPid(p)
        // attach in a row exception
        run {
            val ace = ACE(context)
            // start ACE server and connect to it
            val ports: List<Int> = Port.GetOpenPorts(2)
            val serverThread: Thread = ACEServer.GetStarterThread(context, pid, ports[0], ports[1])
            serverThread.start()

            //
            ace.ConnectToACEServer(port = ports[0], publisherPort = ports[1])
            try {
                ace.ConnectToACEServer(port = ports[0], publisherPort = ports[1])
                Assert.fail()
            } catch (e: ACE.AttachingInARowException) {
                Assert.assertTrue(true)
            }
            // DeAttach and stop server
            ace.DeAttach()
            serverThread.join()
        }
        // DeAttach without attach
        run {
            val ace = ACE(context)
            // start ACE server and connect to it
            val ports: List<Int> = Port.GetOpenPorts(2)
            val serverThread: Thread = ACEServer.GetStarterThread(context, pid, ports[0], ports[1])
            serverThread.start()
            try {
                ace.DeAttach()
                Assert.fail()
            } catch (e: ACE.NoAttachException) {
                Assert.assertTrue(true)
            }

            // Connect to DeAttach and stop server
            ace.ConnectToACEServer(port = ports[0], publisherPort = ports[1])
            ace.DeAttach()
            serverThread.join()
        }
        p.destroy()
    }

    @Test

    fun AttachInARowException() {
        val context: Context = InstrumentationRegistry.getInstrumentation().getTargetContext()
        val ace = ACE(context)
        val p: Process = ProcUtil.RunBusyProgram()
        val pid: Long = ProcUtil.GetPid(p)
        //
        ace.Attach(pid)
        // can't Attach in a row without DeAttaching first
        try {
            ace.Attach(pid)
            Assert.fail()
        } catch (e: ACE.AttachingInARowException) {
            Assert.assertTrue(true)
        }
        ace.DeAttach()
        // cleanup
        p.destroy()
    }

    @Test

    fun DeAttachingWithoutAttachException() {
        val context: Context = InstrumentationRegistry.getInstrumentation().getTargetContext()
        val ace = ACE(context)
        val p: Process = ProcUtil.RunBusyProgram()
        // can't DeAttach without Attach first
        try {
            ace.DeAttach()
            Assert.fail()
        } catch (e: ACE.NoAttachException) {
            Assert.assertTrue(true)
        }
        // cleanup
        p.destroy()
    }

    @Test

    fun OperationRequiresAttach() {
        val context: Context = InstrumentationRegistry.getInstrumentation().getTargetContext()
        val ace = ACE(context)
        val p: Process = ProcUtil.RunBusyProgram()
        // can't do operation without Attach first
        try {
            ace.GetAttachedPid()
            Assert.fail()
        } catch (e: ACE.NoAttachException) {
            Assert.assertTrue(true)
        }
        // cleanup
        p.destroy()
    }

    @Test

    fun GetAvailableNumTypes() {
        val context: Context = InstrumentationRegistry.getInstrumentation().getTargetContext()
        val ace = ACE(context)
        val availableTypes: List<NumTypeInfo> = ace.GetAvailableNumTypes()

        // need to have at least 8, 16 and 32 bit number type
        Assert.assertTrue(
            availableTypes.stream().anyMatch { o -> o.GetBitSize().equals(8) }
        )
        Assert.assertTrue(
            availableTypes.stream().anyMatch { o -> o.GetBitSize().equals(16) }
        )
        Assert.assertTrue(
            availableTypes.stream().anyMatch { o -> o.GetBitSize().equals(32) }
        )
    }

    @Test

    fun GetAvailableOperatorTypes() {
        val context: Context = InstrumentationRegistry.getInstrumentation().getTargetContext()
        val ace = ACE(context)
        val availableTypes: List<ACE.Operator> = ace.GetAvailableOperatorTypes()

        // assert that the engine support all operation types that
        // we have listed
        for (op in ACE.Operator.values()) {
            Assert.assertTrue(availableTypes.contains(op))
        }
    }

    // TODO: add test for all number types :)
    @Test

    fun ScanAndGetMatches() {
        val context: Context = InstrumentationRegistry.getInstrumentation().getTargetContext()
        val ace = ACE(context)
        val p: Process = ProcUtil.RunBusyProgram()
        val pid: Long = ProcUtil.GetPid(p)
        ace.Attach(pid)
        // shoudlnt have any matches before scan
        Assert.assertEquals(0 as Int, ace.GetMatchCount())
        ace.ScanAgainstValue(ACE.Operator.notEqual, "0")
        // now we should have some matches
        Assert.assertTrue(ace.GetMatchCount() > 0)

        // ====================
        ace.DeAttach()
    }

    @Test

    fun ScanAndGetMatchesList() {
        // ============== init ==================
        // nothing special, just some random number
        val maxMatchesCount: Int = 2
        //
        val context: Context = InstrumentationRegistry.getInstrumentation().getTargetContext()
        val ace = ACE(context)
        val p: Process = ProcUtil.RunBusyProgram()
        val pid: Long = ProcUtil.GetPid(p)
        ace.Attach(pid)
        // shouldn't have any matches before scan
        Assert.assertEquals(0, ace.GetMatchCount())
        Assert.assertEquals(0, ace.ListMatches(maxMatchesCount).size)
        ace.ScanAgainstValue(ACE.Operator.notEqual, "0")
        // get matches
        val matches: List<ACE.MatchInfo> = ace.ListMatches(maxMatchesCount)
        // the actual matches count will be bigger than [maxMatchesCount]
        // but we can limit how many matches we get from the engine
        // for performance reason
        Assert.assertTrue(ace.GetMatchCount() > maxMatchesCount)
        Assert.assertEquals(maxMatchesCount as Int, matches.size)
        for (matchInfo in matches) {
            // address must be hex and the previous value must be normal numeric
            Assert.assertTrue(NumUtil.IsHex(matchInfo.address))
            Assert.assertTrue(NumUtil.IsNumeric(matchInfo.prevValue))
        }

        // ====================
        ace.DeAttach()
    }

    @Test

    fun ScanAndResetMatches() {
        val context: Context = InstrumentationRegistry.getInstrumentation().getTargetContext()
        val ace = ACE(context)
        val p: Process = ProcUtil.RunBusyProgram()
        val pid: Long = ProcUtil.GetPid(p)
        ace.Attach(pid)
        // shoudlnt have any matches before scan
        Assert.assertEquals(0 as Int, ace.GetMatchCount())
        ace.ScanAgainstValue(ACE.Operator.notEqual, "0")
        // now we should have some matches
        Assert.assertTrue(ace.GetMatchCount() > 0)
        ace.ResetMatches()
        // matches should be 0 now
        Assert.assertEquals(0 as Int, ace.GetMatchCount())
        // ====================
        ace.DeAttach()
    }

    @Test

    fun ActionOnType() {
        val context: Context = InstrumentationRegistry.getInstrumentation().getTargetContext()
        val ace = ACE(context)
        val p: Process = ProcUtil.RunBusyProgram()
        val pid: Long = ProcUtil.GetPid(p)
        ace.Attach(pid)
        // ==========
        val defaultType: ACE.NumType = ACE.NumType._int
        for (numType in ACE.NumType.values()) {
            ace.ActionOnType(numType)
            {
                // make sure type has been set, when we are running
                // the callback
                Assert.assertEquals(numType, ace.GetNumType())
            }
            // make sure type is reset
            Assert.assertEquals(defaultType, ace.GetNumType())
        }

        // ====================
        ace.DeAttach()
    }
}