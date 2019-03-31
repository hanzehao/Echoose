package com.ef.entity;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "mscore")
public class Mscore {
    private int msid;
    private String mname;
    private int average;
    private int max;
    private int min;
    private String mdividion;
    private Date myear;
    private String mbatch;
    private String mcompare;

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    public int getMsid() {
        return msid;
    }

    public void setMsid(int msid) {
        this.msid = msid;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public int getAverage() {
        return average;
    }

    public void setAverage(int average) {
        this.average = average;
    }

    public int getMax() {
        return max;
    }

    public void setMax(int max) {
        this.max = max;
    }

    public int getMin() {
        return min;
    }

    public void setMin(int min) {
        this.min = min;
    }

    public String getMdividion() {
        return mdividion;
    }

    public void setMdividion(String mdividion) {
        this.mdividion = mdividion;
    }

    public Date getMyear() {
        return myear;
    }

    public void setMyear(Date myear) {
        this.myear = myear;
    }

    public String getMbatch() {
        return mbatch;
    }

    public void setMbatch(String mbatch) {
        this.mbatch = mbatch;
    }

    public String getMcompare() {
        return mcompare;
    }

    public void setMcompare(String mcompare) {
        this.mcompare = mcompare;
    }
}
