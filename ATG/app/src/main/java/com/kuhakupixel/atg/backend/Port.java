package com.kuhakupixel.atg.backend;

import java.io.IOException;
import java.net.ServerSocket;
import java.util.ArrayList;
import java.util.List;

public class Port {

    public static List<Integer> GetOpenPorts(int portCount) throws IOException {
        List<ServerSocket> sockets = new ArrayList<ServerSocket>();
        List<Integer> openPorts = new ArrayList<Integer>();

        for (int i = 0; i < portCount; i++) {
            // if we pass 0, a port number will be automatically allocated
            // https://docs.oracle.com/javase/7/docs/api/java/net/ServerSocket.html#ServerSocket%28int%29
            ServerSocket socket = new ServerSocket(0);
            sockets.add(socket);
            Integer portNum = socket.getLocalPort();
            openPorts.add(portNum);
        }
        // close all the sockets so caller can actually use them :v
        for (ServerSocket socket : sockets) {
            socket.close();
        }
        //
        return openPorts;


    }

    public static Integer GetOpenPort() throws IOException {
        return GetOpenPorts(1).get(0);
    }
}
