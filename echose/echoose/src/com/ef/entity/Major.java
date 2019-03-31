package com.ef.entity;

import javax.persistence.*;

@Entity
@Table(name = "tbl_major")
public class Major {
    private int mid;
    private String mname;
    private int mcode;
    private String mbtype;
    private String mintoduce;

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public int getMcode() {
        return mcode;
    }

    public void setMcode(int mcode) {
        this.mcode = mcode;
    }

    public String getMbtype() {
        return mbtype;
    }

    public void setMbtype(String mbtype) {
        this.mbtype = mbtype;
    }

    public String getMintoduce() {
        return mintoduce;
    }

    public void setMintoduce(String mintoduce) {
        this.mintoduce = mintoduce;
    }
}
