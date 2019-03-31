package com.ef.entity;

import javax.persistence.*;

@Entity
@Table(name = "tbl_majorcoretype")
public class Majorcoretype {

    private int mstid;
    private String mstname;

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    public int getMstid() {
        return mstid;
    }

    public void setMstid(int mstid) {
        this.mstid = mstid;
    }

    public String getMstname() {
        return mstname;
    }

    public void setMstname(String mstname) {
        this.mstname = mstname;
    }
}
