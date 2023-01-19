package com.example.utils;

import android.util.Log;

/*
* static wrapper for code injection so no object instantiation
* is needed
* */
public class Injector {

    public static void Init() {
        Log.d("AceTheGame", "Code Is injected :D");
        // inject the library
        InjectorCore injectorCore = new InjectorCore();
        injectorCore.Init();

    }


}
