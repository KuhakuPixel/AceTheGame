package com.java.atg;

import android.content.Context;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ACE {
    /**
     * the running server thread
     * <p>
     * if null means it isn't attached to anything
     */
    private Thread serverThread = null;
    private ACEClient client;
    private Integer portNum;
    private Context context;

    public ACE(Context context, Integer portNum) throws IOException{
        this.portNum = portNum;
        this.context = context;
        this.client = new ACEClient(context, portNum);
    }
    public ACE(Context context) throws IOException {
        this(context, Port.GetOpenPort());
    }

    public Thread GetServerThread() {
        return serverThread;
    }

    public void Attach(Long pid) throws IOException {
        this.serverThread = ACEServer.GetStarterThread(this.context, pid, this.portNum);
        this.serverThread.start();
    }

    public void Deattach() throws InterruptedException {
        // tell server to die
        client.Request("stop");
        // wait for server's thread to finish
        // to make sure we are not attached anymore
        serverThread.join();
        //
        serverThread = null;
    }

    public Boolean IsAttached() {
        if (serverThread == null) return false;
        return client.Request("attached").equals("attached_ok");
    }

    public Long GetAttachedPid() {
        String pidStr = client.Request("pid");
        return Long.parseLong(pidStr);
    }
    public List<ProcInfo> ListRunningProc(){
        List<ProcInfo> runningProcs = new ArrayList<ProcInfo>();
        // use --reverse so newest process will be shown first
        List<String> runningProcsInfoStr = this.client.MainCmdAsList("ps ls --reverse");
        // parse each string
        for (String procInfoStr : runningProcsInfoStr){
            runningProcs.add(new ProcInfo(procInfoStr));
        }
        return runningProcs;
    }
    public boolean IsPidRunning(Long pid){
        String cmdArr[] = new String[]{"ps","is_running", pid.toString()};
        String boolStr = this.client.MainCmd(String.join(" ", cmdArr));
        assert (boolStr.equals("true") || boolStr.equals("false"));
        return Boolean.parseBoolean(boolStr);
    }
}