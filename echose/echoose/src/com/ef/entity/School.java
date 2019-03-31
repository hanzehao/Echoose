package com.ef.entity;

import javax.persistence.*;

@Entity
@Table(name = "tbl_school")
public class School {

    private int sid;
    private String sname;
    private String sspecial;
    private String sbelong;
    private String snet;
    private String simg;
    private String sscore;
    private String introduce1;
    private String introduce2;

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getSspecial() {
        return sspecial;
    }

    public void setSspecial(String sspecial) {
        this.sspecial = sspecial;
    }

    public String getSbelong() {
        return sbelong;
    }

    public void setSbelong(String sbelong) {
        this.sbelong = sbelong;
    }

    public String getSnet() {
        return snet;
    }

    public void setSnet(String snet) {
        this.snet = snet;
    }

    public String getSimg() {
        return simg;
    }

    public void setSimg(String simg) {
        this.simg = simg;
    }

    public String getSscore() {
        return sscore;
    }

    public void setSscore(String sscore) {
        this.sscore = sscore;
    }

    public String getIntroduce1() {
        return introduce1;
    }

    public void setIntroduce1(String introduce1) {
        this.introduce1 = introduce1;
    }

    public String getIntroduce2() {
        return introduce2;
    }

    public void setIntroduce2(String introduce2) {
        this.introduce2 = introduce2;
    }
}
