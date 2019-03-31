package com.ef.entity;

import javax.persistence.*;

@Entity
@Table(name = "tbl_cteacheruser")
public class Cteacheruser {
    private int tuid;
    private int tphone;
    private String tpassword;
    private String temail;
    private String tname;
    private String tsex;

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    public int getTuid() {
        return tuid;
    }

    public void setTuid(int tuid) {
        this.tuid = tuid;
    }

    public int getTphone() {
        return tphone;
    }

    public void setTphone(int tphone) {
        this.tphone = tphone;
    }

    public String getTpassword() {
        return tpassword;
    }

    public void setTpassword(String tpassword) {
        this.tpassword = tpassword;
    }

    public String getTemail() {
        return temail;
    }

    public void setTemail(String temail) {
        this.temail = temail;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getTsex() {
        return tsex;
    }

    public void setTsex(String tsex) {
        this.tsex = tsex;
    }
}
