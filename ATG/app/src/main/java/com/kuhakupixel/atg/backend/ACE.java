package com.kuhakupixel.atg.backend;

import android.content.Context;

import androidx.annotation.NonNull;

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

    public enum NumType {
        _int, _long, _short, _float, _byte;

        @NonNull
        @Override
        public String toString() {
            return this.name().replace("_", "");
        }

        public static NumType fromString(String s) {
            if (s.charAt(0) != '_')
                s = "_" + s;
            return NumType.valueOf(s);

        }

    }

    public class MatchInfo {

        String address;
        String prevValue;

        public String getAddress() {
            return address;
        }

        public String getPrevValue() {
            return prevValue;
        }

        public MatchInfo(String address, String prevValue) {
            this.address = address;
            this.prevValue = prevValue;
        }
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
    private final List<NumTypeInfo> availableNumTypes;


    public ACE(Context context, Integer portNum) throws IOException {
        this.portNum = portNum;
        this.context = context;
        this.client = new ACEClient(context, portNum);
        this.availableNumTypes = GetAvailableNumTypes();
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

    public Integer GetNumTypeBitSize(NumType numType) {
        Integer bitSize = null;
        for (NumTypeInfo typeInfo : this.availableNumTypes) {
            if (typeInfo.GetName().equals(numType.toString()))
                bitSize = typeInfo.GetBitSize();
        }
        return bitSize;
    }


    // =============== this commands require attach ===================
    public String CheaterCmd(String cmd) {
        AssertAttached();
        String out = client.Request(cmd);
        return out;
    }

    public List<String> CheaterCmdAsList(String cmd) {
        AssertAttached();
        return client.RequestAsList(cmd);
    }

    public Long GetAttachedPid() {
        String pidStr = CheaterCmd("pid");
        return Long.parseLong(pidStr);
    }

    public void SetNumType(NumType type) {
        CheaterCmd("config type " + type.toString());
    }

    public void ScanAgainstValue(Operator operator, String numValStr) {
        String cmd = String.format("scan %s %s", operatorEnumToSymbolBiMap.get(operator), numValStr);
        CheaterCmd(cmd);

    }

    public void ScanWithoutValue(Operator operator) {
        String cmd = String.format("filter %s", operatorEnumToSymbolBiMap.get(operator));
        CheaterCmd(cmd);
    }

    public Integer GetMatchCount() {
        Integer count = Integer.parseInt(CheaterCmd("matchcount"));
        return count;
    }

    public List<MatchInfo> ListMatches(Integer maxCount) {
        /**
         * get list of matches with list command
         * which will return a list of [address] - [prev value] one per each line
         * */

        List<MatchInfo> matches = new ArrayList<MatchInfo>();
        String cmd = String.format("list --max-count %d", maxCount);
        List<String> matchesStr = CheaterCmdAsList(cmd);
        for (String s : matchesStr) {
            String[] splitted = s.split(" ");
            assert (splitted.length == 2);
            matches.add(new MatchInfo(splitted[0], splitted[1]));
        }
        return matches;
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
    public List<NumTypeInfo> GetAvailableNumTypes() {
        List<NumTypeInfo> numTypeInfos = new ArrayList<NumTypeInfo>();
        String[] cmdArr = new String[]{"info", "type"};

        List<String> out = MainCmdAsList(String.join(" ", cmdArr));
        for (String s : out) {
            String[] splitted = s.split(" ");
            assert 2 == splitted.length;
            String typeStr = splitted[0];
            Integer bitSize = Integer.parseInt(splitted[1]);
            numTypeInfos.add(new NumTypeInfo(typeStr, bitSize));
        }
        return numTypeInfos;

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