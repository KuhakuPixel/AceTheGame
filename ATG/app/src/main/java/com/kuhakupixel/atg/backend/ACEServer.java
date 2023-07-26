package com.kuhakupixel.atg.backend;

import android.content.Context;
import android.util.Log;

import com.topjohnwu.superuser.Shell;

import java.io.File;
import java.io.IOException;
import java.io.UncheckedIOException;
import java.util.ArrayList;
import java.util.List;

public class ACEServer {
    /*
     * Get thread to start the server
     * */
    public static Thread GetStarterThread(Context context, Long pid, Integer portNum, Integer statusPublisherPort) throws IOException {
        Thread thread = new Thread(
                () -> {
                    Log.i("ATG", String.format("Running engine server at port %d", portNum));
                    String path = "";
                    try {
                        path = Binary.GetBinPath(context, Binary.Type.server);
                    } catch (IOException e) {
                        throw new UncheckedIOException(e);
                    }
                    assert (new File(path).exists());

                    System.out.println("Binary path is " + path);
                    String[] cmds = new String[]{path, "attach-pid", pid.toString(), "--port", portNum.toString(), "--status_publisher_port", statusPublisherPort.toString()};

                    String cmd_string = String.join(" ", cmds);
                    Log.i("ATG", String.format("Running command %s\n", cmd_string));

                    Shell.Result res = Shell.cmd(cmd_string).exec();
                    List<String> output = new ArrayList<String>(res.getOut());
                    output.addAll(res.getErr());
                    Log.i("ATG", String.join("\n", output));


                }

        );

        return thread;
    }


}
