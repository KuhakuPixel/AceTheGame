package com.java.atg;

import org.zeromq.SocketType;
import org.zeromq.ZContext;
import org.zeromq.ZMQ;

public class ACEClient {

    ZContext zmqContext = null;
    ZMQ.Socket zmqSocket = null;

    String zmqAddress = "tcp://localhost:56666";

    public ACEClient() throws InterruptedException{

        // =================== connect to service port ===========
        // this.zmqContext = new ZContext();
        // // connect to address
        // this.zmqSocket = zmqContext.createSocket(SocketType.REQ);
        // this.zmqSocket.connect(zmqAddress);

    }

    public String Request(String requestCmd) throws InterruptedException{
        /*
        // Socket to talk to server
        System.out.println("Connecting to server");
        zmqSocket.send(requestCmd.getBytes(ZMQ.CHARSET), 0);
        byte[] reply = zmqSocket.recv(0);
        System.out.println("Reply received");
        String replyStr = new String(reply, ZMQ.CHARSET);
        replyStr = replyStr.replace("\n","");
        return replyStr;

         */
        String[] replyStrArr = {""};
        Thread clientThread = new Thread(

                () -> {
                    // code goes here.
                    try (ZContext context = new ZContext()) {
                        //  Socket to talk to server
                        System.out.println("Connecting to server");

                        ZMQ.Socket socket = context.createSocket(SocketType.REQ);
                        socket.connect(this.zmqAddress);
                        socket.send(requestCmd.getBytes(ZMQ.CHARSET), 0);

                        byte[] reply = socket.recv(0);
                        replyStrArr[0] = new String(reply, ZMQ.CHARSET);
                    }
                }

        );
        clientThread.start();
        clientThread.join();
        return replyStrArr[0];


    }

}

