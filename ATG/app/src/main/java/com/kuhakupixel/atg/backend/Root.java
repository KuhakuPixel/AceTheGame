package com.kuhakupixel.atg.backend;

import android.util.Log;

import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.StringUtils;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Root {

    /*
     * Run [strings] as sudo
     * credits: https://stackoverflow.com/a/26654728/14073678
     * */
    public static List<String> sudo(String[] cmd) {
        List<String> res = new ArrayList<String>();
        try {
            String[] fullCmd = ArrayUtils.addAll(new String[]{"su", "--command"}, cmd);
            Process su = Runtime.getRuntime().exec(fullCmd);
            BufferedReader stdInput = new BufferedReader(new
                    InputStreamReader(su.getInputStream()));

            BufferedReader stdError = new BufferedReader(new
                    InputStreamReader(su.getErrorStream()));

            String s;
            while ((s = stdInput.readLine()) != null)
                res.add(s);
            while ((s = stdError.readLine()) != null)
                res.add(s);

        } catch (IOException e) {
            e.printStackTrace();
        }
        return res;
    }
}