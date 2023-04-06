package com.java.atg;

import android.util.Log;

import com.topjohnwu.superuser.Shell;

import java.io.File;
import java.io.IOException;
import java.io.UncheckedIOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ACE {
    public static Thread RunServer() throws IOException {

        Thread thread = new Thread(

                () -> {
                    Log.i("ATG", "Running Binary");
                    String path = "";
                    try {
                        path = Binary.GetBinPath(Binary.Type.server);
                    }
                    catch(IOException e){
                        throw new UncheckedIOException(e);
                    }
                    assert (new File(path).exists());
                    System.out.println("Binary path is " + path);
                    String[] cmds = new String[]{path, "--attach-self"};
                    String cmd_string = String.join(" ", cmds);
                    Shell.Result result;
                    // Execute commands synchronously
                    System.out.printf("Running command %s\n", cmd_string);
                    result = Shell.cmd(cmd_string).exec();
                    List<String> out = result.getOut();
                    System.out.println("Output of binary: ");
                    System.out.println(String.join("\n", out));
                }

        );
        thread.start();
        return thread;
    }

}
