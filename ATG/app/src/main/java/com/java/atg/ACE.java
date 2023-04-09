package com.java.atg;

import java.io.IOException;

public class ACE {
    private static ACEServer server = new ACEServer();
    /**
     * the running server thread
     *
     * if null means it isn't attached to anything
     * */
    private static Thread serverThread = null;
    private static ACEClient client;

    static {
        try {
            client = new ACEClient();
        } catch (IOException e) {
            client = null;
        }
    }

    public static Thread GetServerThread() {
        return serverThread;
    }

    public static void Attach(Long pid) throws IOException {
        serverThread = server.GetStarterThread(pid);
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
