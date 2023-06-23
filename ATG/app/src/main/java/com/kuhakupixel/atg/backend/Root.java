package com.kuhakupixel.atg.backend;

import android.util.Log;

import org.apache.commons.lang3.StringUtils;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Root {

    /*
     * Run [strings] as sudo
     * credits: https://stackoverflow.com/a/26654728/14073678
     * */
    public static List<String> sudo(String[] cmd) {
        String res = "";
        DataOutputStream outputStream = null;
        InputStream response = null;
        // put a quote betweeen each string in [cmd]
        List<String> cmdList = new ArrayList<String>();

        for (String s : cmd) {
            cmdList.add(String.format("\"%s\"", s));
        }
        String cmdStr = String.join(" ", cmdList);

        try {
            Process su = Runtime.getRuntime().exec("su");
            outputStream = new DataOutputStream(su.getOutputStream());
            response = su.getInputStream();

            outputStream.writeBytes(cmdStr + "\n");
            outputStream.flush();

            outputStream.writeBytes("exit\n");
            outputStream.flush();
            try {
                su.waitFor();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            res = readFully(response);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            Closer.closeSilently(outputStream);
            Closer.closeSilently(response);
        }
        // return an empty list, if output is empty
        if (StringUtils.isEmpty(res))
            return new ArrayList<String>();
        else
            return Arrays.asList(res.split("\\n"));
    }

    public static String readFully(InputStream is) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] buffer = new byte[1024];
        int length;
        while ((length = is.read(buffer)) != -1) {
            byteArrayOutputStream.write(buffer, 0, length);
        }
        return byteArrayOutputStream.toString("UTF-8");
    }
}

class Closer {
    public static void closeSilently(Closeable x) {
        try {
            x.close();
        } catch (Throwable e) {
            Log.e("ATG", e.toString());
        }
    }
}