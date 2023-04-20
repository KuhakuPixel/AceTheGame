package com.kuhakupixel.atg.backend;

/*
 * info about process
 * */
public class ProcInfo {
    private String pidStr = "";
    private String name = "";

    /*
     * [pidAndNameStr]: pid and name separated by space
     *
     * */
    public ProcInfo(String pidAndNameStr) {
        String[] splitted = pidAndNameStr.split(" ", 2);
        assert (2 == splitted.length);
        this.pidStr = splitted[0];
        this.name = splitted[1];

    }

    public String GetPidStr() {
        return pidStr;
    }

    public String GetName() {
        return name;
    }
}
