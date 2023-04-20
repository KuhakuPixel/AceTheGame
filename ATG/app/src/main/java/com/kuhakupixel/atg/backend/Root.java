package com.kuhakupixel.atg.backend;

import java.io.DataOutputStream;
import java.io.IOException;

public class Root {

    /*
    * Run [strings] as sudo
    * credits: https://stackoverflow.com/a/26654728/14073678
    * */
    public static void sudo(String...strings) throws IOException {
        try{
            Process su = Runtime.getRuntime().exec("su");
            DataOutputStream outputStream = new DataOutputStream(su.getOutputStream());

            for (String s : strings) {
                outputStream.writeBytes(s+"\n");
                outputStream.flush();
            }

            outputStream.writeBytes("exit\n");
            outputStream.flush();
            try {
                su.waitFor();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            outputStream.close();
        }catch(IOException e){
            e.printStackTrace();
        }
    }
}
