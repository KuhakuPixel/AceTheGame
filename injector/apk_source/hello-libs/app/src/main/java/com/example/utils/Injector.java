package com.example.utils;

import android.util.Log;

/*
 * static wrapper for code injection so no object instantiation
 * is needed
 * */
public class Injector {

    public static void Init() {
        Log.d("AceTheGame", "Code Injection Started :D");
        Thread run_th = new Thread() {

            public void run() {
                // inject the library
                InjectorCore injectorCore = new InjectorCore();
                //TODO: make this multi thread, because we multithread
                // in native module won't work and will make the app stuck
                // in an inf loop, since the java ffi probably waits until
                // all thread are stopped
                injectorCore.Init();
            }

        };

        run_th.start();
        Log.d("AceTheGame", "Code Injection Done :D");

    }


}
