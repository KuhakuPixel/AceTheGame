package com.java.atg;

import static android.content.Context.ACTIVITY_SERVICE;

import android.app.ActivityManager;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.List;

public class ProcUtil {

    /*
    * get pid of process using reflection
    * there is Process.pid() in java 9
    * */
    public static synchronized long GetPid(Process process) {
        long pid = -1;
        try {
            if (process.getClass().getName().equals("java.lang.UNIXProcess")) {
                Field f = process.getClass().getDeclaredField("pid");
                f.setAccessible(true);
                pid = f.getLong(process);
                f.setAccessible(false);
            }
        }
        catch (Exception e) {
        }
        return pid;
    }

    /**
     * run a program that does nothing,
     * this function is only for testing
     * return: created process
     */
    public static Process RunBusyProgram() throws IOException {

        // command that do nothing and runs forever
        // https://unix.stackexchange.com/a/42905/505340

        String cmd = "tail -f /dev/null";
        Process process = Runtime.getRuntime().exec(cmd);
        return process;

    }
}
