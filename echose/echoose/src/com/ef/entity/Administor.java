package com.ef.entity;

import javax.persistence.*;

@Entity
@Table(name = "tbl_administor")
public class Administor {

    private int adid;
    private String aname;
    private String apassword;

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    public int getAdid() {
        return adid;
    }

    public void setAdid(int adid) {
        this.adid = adid;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public String getApassword() {
        return apassword;
    }

    public void setApassword(String apassword) {
        this.apassword = apassword;
    }
}
