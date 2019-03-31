package com.ef.entity;

import javax.persistence.*;

@Entity
@Table(name = "tbl_majortype")
public class Majortype {
    private int mtid;
    private String mtname;

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    public int getMtid() {
        return mtid;
    }

    public void setMtid(int mtid) {
        this.mtid = mtid;
    }

    public String getMtname() {
        return mtname;
    }

    public void setMtname(String mtname) {
        this.mtname = mtname;
    }
}
