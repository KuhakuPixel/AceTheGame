package com.java.atg;

import java.io.IOException;

public class ACE {
    /**
     * the running server thread
     * <p>
     * if null means it isn't attached to anything
     */
    private static Thread serverThread = null;
    private static ACEClient client;
    private static Integer portNum;

    static {

        try {
            portNum = Port.GetOpenPort();
        } catch (IOException e) {
            //
            System.out.println("Error while getting open port " + e.getMessage());
        }
        try {
            client = new ACEClient(portNum);
        } catch (IOException e) {
            System.out.println("Error while getting client " + e.getMessage());
        }
    }

    public static Thread GetServerThread() {
        return serverThread;
    }

    public static void Attach(Long pid) throws IOException {
        serverThread = ACEServer.GetStarterThread(pid, portNum);
        serverThread.start();
    }

    public static void Deattach() throws InterruptedException {
        // tell server to die
        client.Request("stop");
        // wait for server's thread to finish
        // to make sure we are not attached anymore
        serverThread.join();
        //
        serverThread = null;
    }

    public static Boolean IsAttached() {
        if (serverThread == null) return false;
        return client.Request("attached").equals("attached_ok");
    }

    public static Long GetAttachedPid() {
        String pidStr = client.Request("pid");
        return Long.parseLong(pidStr);
    }
}
