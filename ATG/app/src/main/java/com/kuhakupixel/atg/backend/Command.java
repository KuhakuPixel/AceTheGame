package com.kuhakupixel.atg.backend;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

public class Command {
    public static List<String> RunCmd(String[] commands) {
        List<String> procOutput = new ArrayList<String>();
        try {
            Process proc = Runtime.getRuntime().exec(commands);

            BufferedReader stdIn = new BufferedReader(new
                    InputStreamReader(proc.getInputStream()));

            BufferedReader stdErr = new BufferedReader(new
                    InputStreamReader(proc.getErrorStream()));

            // read stdIn and stdErr
            String line;
            while ((line = stdIn.readLine()) != null)
                procOutput.add(line);
            while ((line = stdErr.readLine()) != null)
                procOutput.add(line);
            return procOutput;
        } catch (IOException e) {
            return procOutput;

        }

    }
}
