package com.example.utils;

public class InjectorCore {

    /*
    *  native function must not contain any underscore
    * because it jni cannot resolve it quite easily and you
    * have to do weird tricks to resolve them
    *
    * https://stackoverflow.com/questions/16069209/invoking-jni-functions-in-android-package-name-containing-underscore
    * */
    public native String AceInit();
    static {

        System.loadLibrary("lib_ACE");
    }
     InjectorCore(){
     }

     void Init(){
        AceInit();
     }
}
