package com.ef.entity;

import javax.persistence.*;

@Entity
@Table(name = "tbl_collegetype")
public class Collegetype {

    private int ctid;
    private String ctname;

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    public int getCtid() {
        return ctid;
    }

    public void setCtid(int ctid) {
        this.ctid = ctid;
    }

    public String getCtname() {
        return ctname;
    }

    public void setCtname(String ctname) {
        this.ctname = ctname;
    }
}
