package com.kuhakupixel.atg.backend;

import java.io.IOException;
import java.net.ServerSocket;

public class Port {
    public static Integer GetOpenPort() throws IOException {

        // if we pass 0, a port number will be automatically allocated
        // https://docs.oracle.com/javase/7/docs/api/java/net/ServerSocket.html#ServerSocket%28int%29
        try (
                ServerSocket socket = new ServerSocket(0);
        ) {

            Integer portNum = socket.getLocalPort();
            return portNum;
        }
    }
}
