package com.kuhakupixel.atg.backend;

public class ACEPort {
    /*
    * if we can, we start ACE server on port found by the apk
    *
    * however its not possible for non rooted method where the apk
    * starts its own service via its own port
    * */
    public static int defaultPort = 56666;
    public static int defaultStatusPublisherPort = 56667;
}
