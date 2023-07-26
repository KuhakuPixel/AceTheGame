package com.kuhakupixel.atg.backend;


public class ScanProgressData {
    public Integer current;
    public Integer max;
    public Boolean is_finished;

    public ScanProgressData(Integer current, Integer max, Boolean is_finished) {
        this.current = current;
        this.max = max;
        this.is_finished = is_finished;
    }
}
