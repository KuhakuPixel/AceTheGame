package com.kuhakupixel.atg.backend;


import static com.kuhakupixel.atg.backend.ACEBaseClient.AssertValidCommand;

import org.apache.commons.lang3.StringUtils;
import org.zeromq.SocketType;
import org.zeromq.ZContext;
import org.zeromq.ZMQ;

import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.kuhakupixel.atg.backend.ACEBaseClient.InvalidCommandException;

public class ACEAttachClient implements Closeable {

    private final ZContext context = new ZContext();
    private final ZMQ.Socket socket;

    public ACEAttachClient(Integer port) throws IOException, InterruptedException {
        socket = context.createSocket(SocketType.REQ);
        // need to do networking stuff on new thread to avoid
        // Network on main thread exception
        // https://stackoverflow.com/a/14443056/14073678
        Thread th = new Thread(
                () -> socket.connect(String.format("tcp://localhost:%d", port))
        );
        th.start();
        th.join();

    }

    public List<String> RequestAsList(String[] requestCmd) throws InvalidCommandException {


        String requestCmdStr = String.join(" ", requestCmd);
        socket.send(requestCmdStr.getBytes(ZMQ.CHARSET), 0);
        byte[] reply = socket.recv(0);
        String outStr = new String(reply, ZMQ.CHARSET);
        if (StringUtils.isEmpty(outStr)) {
            return new ArrayList<String>();
        } else {
            List<String> res = Arrays.asList(outStr.split("\n"));
            AssertValidCommand(res);
            return res;
        }


    }

    public String Request(String[] requestCmd) {
        return String.join(" ", RequestAsList(requestCmd));
    }

    @Override
    public void close() {
        context.close();
    }
}

