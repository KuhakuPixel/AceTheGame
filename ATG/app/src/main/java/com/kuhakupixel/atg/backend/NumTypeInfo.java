package com.kuhakupixel.atg.backend;

/**
 * Information about available scan type
 * its name and sizes
 */
public class NumTypeInfo {
    String name;
    Integer bitSize;

    public NumTypeInfo(String name, Integer bitSize) {
        this.name = name;
        this.bitSize = bitSize;
    }

    public String GetName() {
        return this.name;
    }

    public Integer GetBitSize() {
        return this.bitSize;
    }
}
