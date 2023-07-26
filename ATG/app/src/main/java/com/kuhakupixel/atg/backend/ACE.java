package com.kuhakupixel.atg.backend;

import android.content.Context;

import androidx.annotation.NonNull;

import com.google.common.collect.BiMap;
import com.google.common.collect.HashBiMap;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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


    public interface IActionOnType {
        public void Action(ACE self);
    }

    public enum Operator {
        greater, less, equal, greaterEqual, lessEqual, notEqual, unknown,
    }

    public enum NumType {
        _int, _long, _short, _float, _byte;

        @NonNull
        @Override
        public String toString() {
            return this.name().replace("_", "");
        }

        public static NumType fromString(String s) {
            if (s.charAt(0) != '_') s = "_" + s;
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
    /**
     * used for use cases that are unrelated to a specific process
     * for example, listing running processes, checking if a certain program is running
     * and etc
     */
    private final ACEUtilClient aceUtilClient;

    /**
     * used when attached to process, to scan and edit its memory
     */
    private ACEAttachClient aceAttachClient;
    private final Context context;
    private final List<NumTypeInfo> availableNumTypes;


    //
    private Integer statusPublisherPort;

    public synchronized Integer getStatusPublisherPort() {
        return statusPublisherPort;
    }

    public ACE(Context context) throws IOException {
        this.context = context;
        this.aceUtilClient = new ACEUtilClient(context);
        this.availableNumTypes = GetAvailableNumTypes();
    }

    public synchronized Boolean IsAttached() {
        return aceAttachClient != null;
    }

    private synchronized void AssertAttached() {
        if (!this.IsAttached())
            throw new NoAttachException("Operation requires attaching to a process, but it hasn't been attached");
    }

    private synchronized void AssertNoAttachInARow() {
        if (this.IsAttached())
            throw new AttachingInARowException("Cannot Attach without DeAttaching first");
    }

    public synchronized void ConnectToACEServer(Integer port) throws IOException, InterruptedException {
        AssertNoAttachInARow();
        this.aceAttachClient = new ACEAttachClient(port);
    }

    /**
     * this will create an ACE's server that is attached to process [pid]
     */
    public synchronized void Attach(Long pid) throws IOException, InterruptedException {
        AssertNoAttachInARow();
        // start the server
        List<Integer> ports = Port.GetOpenPorts(2);
        this.statusPublisherPort = ports.get(1);
        this.serverThread = ACEServer.GetStarterThread(this.context, pid, ports.get(0), statusPublisherPort);
        this.serverThread.start();
        ConnectToACEServer(ports.get(0));
    }


    public synchronized void DeAttach() throws InterruptedException {
        AssertAttached();
        // tell server to die
        aceAttachClient.Request(new String[]{"stop"});
        aceAttachClient.close();
        aceAttachClient = null;
        // only stop the server if we start one
        if (serverThread != null) {
            // wait for server's thread to finish
            // to make sure we are not attached anymore
            serverThread.join();
        }
    }

    public synchronized Integer GetNumTypeBitSize(NumType numType) {
        Integer bitSize = null;
        for (NumTypeInfo typeInfo : this.availableNumTypes) {
            if (typeInfo.GetName().equals(numType.toString())) bitSize = typeInfo.GetBitSize();
        }
        return bitSize;
    }


    public synchronized String GetNumTypeAndBitSize(NumType numType) {
        Integer bitSize = this.GetNumTypeBitSize(numType);
        return String.format("%s (%d bit)", numType.toString(), bitSize);
    }


    // =============== this commands require attach ===================
    public synchronized String CheaterCmd(String[] cmd) {
        AssertAttached();
        String out = aceAttachClient.Request(cmd);
        return out;
    }

    public synchronized List<String> CheaterCmdAsList(String[] cmd) {
        AssertAttached();
        return aceAttachClient.RequestAsList(cmd);
    }

    public synchronized Long GetAttachedPid() {

        String pidStr = CheaterCmd(new String[]{"pid"});
        return Long.parseLong(pidStr);
    }

    public synchronized void SetNumType(NumType type) {
        CheaterCmd(new String[]{"config", "type", type.toString()});
    }

    /**
     * get current type that ACE use
     */
    public synchronized NumType GetNumType() {
        String typeStr = CheaterCmd(new String[]{"config", "type"});
        return NumType.fromString(typeStr);
    }

    /**
     * run code/function when type is set to [numType]
     * after done, the type will be set to the previous one
     */
    public synchronized void ActionOnType(NumType numType, IActionOnType action) {
        NumType prevType = GetNumType();
        // set type first before writing
        if (prevType != numType)
            SetNumType(numType);
        action.Action(this);
        if (prevType != numType)
            SetNumType(prevType);
    }

    public synchronized void ScanAgainstValue(Operator operator, String numValStr) {
        CheaterCmd(new String[]{"scan", operatorEnumToSymbolBiMap.get(operator), numValStr});

    }

    public synchronized void ScanWithoutValue(Operator operator) {
        CheaterCmd(new String[]{"filter", operatorEnumToSymbolBiMap.get(operator)});
    }

    public synchronized void WriteValueAtAddress(NumType numType, String address, String value) {

        this.ActionOnType(numType,

                self -> {
                    self.CheaterCmd(new String[]{"writeat", address, value});
                }
        );
    }

    public synchronized Integer GetMatchCount() {
        return Integer.parseInt(CheaterCmd(new String[]{"matchcount"}));

    }

    public synchronized void ResetMatches() {
        CheaterCmd(new String[]{"reset"});
    }

    public synchronized List<MatchInfo> ListMatches(Integer maxCount) {
        /**
         * get list of matches with list command
         * which will return a list of [address] - [prev value] one per each line
         * */

        List<MatchInfo> matches = new ArrayList<MatchInfo>();
        List<String> matchesStr = CheaterCmdAsList(new String[]{"list", "--max-count", maxCount.toString()});
        for (String s : matchesStr) {
            String[] splitted = s.split(" ");
            if (splitted.length != 2) {
                throw new IllegalArgumentException(String.format("unexpected Output when listing matches: \"%s\"", s));
            }
            matches.add(new MatchInfo(splitted[0], splitted[1]));
        }
        return matches;
    }

    // =============== this commands don't require attach ===================
    public synchronized List<String> UtilCmdAsList(String[] cmd) {
        return this.aceUtilClient.RequestAsList(cmd);
    }

    public synchronized String UtilCmd(String[] cmd) {
        return this.aceUtilClient.Request(cmd);
    }

    public synchronized List<ProcInfo> ListRunningProc() {
        List<ProcInfo> runningProcs = new ArrayList<ProcInfo>();
        // use --reverse so newest process will be shown first
        List<String> runningProcsInfoStr = UtilCmdAsList(new String[]{"ps", "ls", "--reverse"});
        // parse each string
        for (String procInfoStr : runningProcsInfoStr) {
            runningProcs.add(new ProcInfo(procInfoStr));
        }
        return runningProcs;
    }

    public synchronized boolean IsPidRunning(Long pid) {
        String boolStr = UtilCmd(new String[]{"ps", "is_running", pid.toString()});
        assert (boolStr.equals("true") || boolStr.equals("false"));
        return Boolean.parseBoolean(boolStr);
    }

    /**
     * Get List of available number types and its bit size
     * that ACE engine support, with command `type size`
     * which will return list of "<type name> <bit size>"
     * like "int 32", "short 16" and ect
     */
    public synchronized List<NumTypeInfo> GetAvailableNumTypes() {
        List<NumTypeInfo> numTypeInfos = new ArrayList<NumTypeInfo>();
        List<String> out = UtilCmdAsList(new String[]{"info", "type"});
        for (String s : out) {
            String[] splitted = s.split(" ");
            assert 2 == splitted.length;
            String typeStr = splitted[0];
            Integer bitSize = Integer.parseInt(splitted[1]);
            numTypeInfos.add(new NumTypeInfo(typeStr, bitSize));
        }
        return numTypeInfos;

    }

    public synchronized List<Operator> GetAvailableOperatorTypes() {
        // the output will be a list of supported operators like
        // >
        // <
        // >=
        // etc
        List<Operator> availableOperators = new ArrayList<Operator>();
        List<String> out = UtilCmdAsList(new String[]{"info", "operator"});
        for (String s : out)
            availableOperators.add(operatorEnumToSymbolBiMap.inverse().get(s));
        return availableOperators;
    }
}
