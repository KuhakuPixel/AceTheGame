package com.java.atg;
import org.zeromq.SocketType;
import org.zeromq.ZContext;
import org.zeromq.ZMQ;

public class ACEClient {

    ZContext zmqContext = null;
    ZMQ.Socket zmqSocket = null;

    public ACEClient() {

        // =================== connect to service port ===========
        this.zmqContext = new ZContext();
        // connect to address
        this.zmqSocket = zmqContext.createSocket(SocketType.REQ);
        this.zmqSocket.connect("tcp://127.0.0.1:56666");

    }

    public String Request(String requestCmd) {
        // Socket to talk to server
        System.out.println("Connecting to server");
        zmqSocket.send(requestCmd.getBytes(ZMQ.CHARSET), 0);
        byte[] reply = zmqSocket.recv(0);
        String replyStr = new String(reply, ZMQ.CHARSET);
        replyStr = replyStr.replace("\n","");
        return replyStr;
    }

}

