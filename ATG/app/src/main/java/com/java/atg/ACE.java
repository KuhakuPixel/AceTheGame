package com.java.atg;

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

    public ACE(Integer portNum) throws IOException{
        this.portNum = portNum;
        this.client = new ACEClient(portNum);
    }
    public ACE() throws IOException {
        this(Port.GetOpenPort());
    }

    public Thread GetServerThread() {
        return serverThread;
    }

    public void Attach(Long pid) throws IOException {
        this.serverThread = ACEServer.GetStarterThread(pid, this.portNum);
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
}
