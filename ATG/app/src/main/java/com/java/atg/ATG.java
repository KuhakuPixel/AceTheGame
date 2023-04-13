package com.java.atg;

import android.app.Application;
import android.content.Context;
import android.util.Log;

import java.io.IOException;

public class ATG extends Application {
    private static Context context;
    private static ACE ace = null;

    public void onCreate() {
        super.onCreate();
        ATG.context = getApplicationContext();
        try {
            ace = new ACE();
        } catch (IOException e) {
            System.out.println(e.getMessage());
        }
    }

    public static ACE GetAce() {
        return ace;
    }

    public static Context GetContext() {
        return ATG.context;
    }
}