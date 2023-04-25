package com.kuhakupixel.atg.backend;

public class NumUtil {
    private final static String HexStartFormat = "0x";

    /**
     * Check whether [s] is a hexadecimal
     * it supports hexadecimal string that starts either or without "0x"
     * https://stackoverflow.com/questions/2670639/why-are-hexadecimal-numbers-prefixed-with-0x
     * */
    public static boolean IsHex(String s) {
        s = s.toLowerCase();
        if (s.startsWith(HexStartFormat))
            s = s.substring(HexStartFormat.length());
        return s.matches("-?[0-9a-fA-F]+");
    }
}
