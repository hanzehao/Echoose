package com.ef.entity;

import javax.persistence.*;

@Entity
@Table(name = "tbl_index")
public class Index {
    private int iid;
    private String iname;
    private String iintroduce;
    private String iimg;

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    public int getIid() {
        return iid;
    }

    public void setIid(int iid) {
        this.iid = iid;
    }

    public String getIname() {
        return iname;
    }

    public void setIname(String iname) {
        this.iname = iname;
    }

    public String getIintroduce() {
        return iintroduce;
    }

    public void setIintroduce(String iintroduce) {
        this.iintroduce = iintroduce;
    }

    public String getIimg() {
        return iimg;
    }

    public void setIimg(String iimg) {
        this.iimg = iimg;
    }
}
