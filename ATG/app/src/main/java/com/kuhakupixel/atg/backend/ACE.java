package com.kuhakupixel.atg.backend;

import android.content.Context;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.google.common.collect.BiMap;
import com.google.common.collect.HashBiMap;

/**
 * to communicate with ACE's engine binary
 * sending input and getting output
 */
public class ACE {

    /**
     * thrown when an operation requires attach to a process
     * but we haven't
     */
    public class NoAttachException extends RuntimeException {
        public NoAttachException() {
            super();
        }

        public NoAttachException(String msg) {
            super(msg);
        }

    }

    /**
     * thrown when trying to attach when we have attached to a process
     * without deattaching first
     */
    public class AttachingInARowException extends RuntimeException {
        public AttachingInARowException() {
            super();
        }

        public AttachingInARowException(String msg) {
            super(msg);
        }

    }


    public enum Operator {
        greater,
        less,
        equal,
        greaterEqual,
        lessEqual,
        notEqual,
        unknown,
    }

    // https://stackoverflow.com/a/507658/14073678
    public static final BiMap<ACE.Operator, String> operatorEnumToSymbolBiMap = HashBiMap.create();

    static {
        operatorEnumToSymbolBiMap.put(Operator.greater, ">");
        operatorEnumToSymbolBiMap.put(Operator.less, "<");
        operatorEnumToSymbolBiMap.put(Operator.equal, "=");
        operatorEnumToSymbolBiMap.put(Operator.greaterEqual, ">=");
        operatorEnumToSymbolBiMap.put(Operator.lessEqual, "<=");
        operatorEnumToSymbolBiMap.put(Operator.notEqual, "!=");
        operatorEnumToSymbolBiMap.put(Operator.unknown, "?");
    }

    /**
     * the running server thread
     * <p>
     * if null means it isn't attached to anything
     */
    private Thread serverThread = null;
    private final ACEClient client;
    private final Integer portNum;
    private final Context context;

    public ACE(Context context, Integer portNum) throws IOException {
        this.portNum = portNum;
        this.context = context;
        this.client = new ACEClient(context, portNum);
    }

    public ACE(Context context) throws IOException {
        this(context, Port.GetOpenPort());
    }

    public Boolean IsAttached() {
        return serverThread != null;
    }

    private void AssertAttached() {
        if (!this.IsAttached())
            throw new NoAttachException("Operation requires attaching to a process, but it hasn't been attached");
    }

    private void AssertNoAttachInARow() {
        if (this.IsAttached())
            throw new AttachingInARowException("Cannot Attach without DeAttaching first");
    }

    public Thread GetServerThread() {
        return serverThread;
    }

    public void Attach(Long pid) throws IOException {
        AssertNoAttachInARow();
        this.serverThread = ACEServer.GetStarterThread(this.context, pid, this.portNum);
        this.serverThread.start();
    }

    public void DeAttach() throws InterruptedException {
        AssertAttached();
        // tell server to die
        client.Request("stop");
        // wait for server's thread to finish
        // to make sure we are not attached anymore
        serverThread.join();
        //
        serverThread = null;
    }


    // =============== this commands require attach ===================
    public String CheaterCmd(String cmd) {
        AssertAttached();
        String out = client.Request(cmd);
        return out;
    }
    
    public Long GetAttachedPid() {
        String pidStr = CheaterCmd("pid");
        return Long.parseLong(pidStr);
    }

    // =============== this commands don't require attach ===================
    public List<String> MainCmdAsList(String cmd) {
        return this.client.MainCmdAsList(cmd);
    }

    public String MainCmd(String cmd) {
        return this.client.MainCmd(cmd);
    }
    public List<ProcInfo> ListRunningProc() {
        List<ProcInfo> runningProcs = new ArrayList<ProcInfo>();
        // use --reverse so newest process will be shown first
        List<String> runningProcsInfoStr = MainCmdAsList("ps ls --reverse");
        // parse each string
        for (String procInfoStr : runningProcsInfoStr) {
            runningProcs.add(new ProcInfo(procInfoStr));
        }
        return runningProcs;
    }

    public boolean IsPidRunning(Long pid) {
        String[] cmdArr = new String[]{"ps", "is_running", pid.toString()};
        String boolStr = MainCmd(String.join(" ", cmdArr));
        assert (boolStr.equals("true") || boolStr.equals("false"));
        return Boolean.parseBoolean(boolStr);
    }

    /**
     * Get List of available number types and its bit size
     * that ACE engine support, with command `type size`
     * which will return list of "<type name> <bit size>"
     * like "int 32", "short 16" and ect
     */
    public List<NumType> GetAvailableNumTypes() {
        List<NumType> numTypes = new ArrayList<NumType>();
        String[] cmdArr = new String[]{"info", "type"};

        List<String> out = MainCmdAsList(String.join(" ", cmdArr));
        for (String s : out) {
            String[] splitted = s.split(" ");
            assert 2 == splitted.length;
            String typeStr = splitted[0];
            Integer bitSize = Integer.parseInt(splitted[1]);
            numTypes.add(new NumType(typeStr, bitSize));
        }
        return numTypes;

    }

    public List<Operator> GetAvailableOperatorTypes() {
        // the output will be a list of supported operators like
        // >
        // <
        // >=
        // etc
        List<Operator> availableOperators = new ArrayList<Operator>();
        String[] cmdArr = new String[]{"info", "operator"};
        List<String> out = MainCmdAsList(String.join(" ", cmdArr));
        for (String s : out)
            availableOperators.add(operatorEnumToSymbolBiMap.inverse().get(s));
        return availableOperators;
    }
}