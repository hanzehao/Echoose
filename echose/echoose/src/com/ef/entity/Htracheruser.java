package com.ef.entity;

import javax.persistence.*;

@Entity
@Table(name = "tbl_hteacheruser")
public class Htracheruser {

    private int huid;
    private int hphone;
    private String hpassword;
    private String hemail;
    private String hname;
    private String hsex;

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    public int getHuid() {
        return huid;
    }

    public void setHuid(int huid) {
        this.huid = huid;
    }

    public int getHphone() {
        return hphone;
    }

    public void setHphone(int hphone) {
        this.hphone = hphone;
    }

    public String getHpassword() {
        return hpassword;
    }

    public void setHpassword(String hpassword) {
        this.hpassword = hpassword;
    }

    public String getHemail() {
        return hemail;
    }

    public void setHemail(String hemail) {
        this.hemail = hemail;
    }

    public String getHname() {
        return hname;
    }

    public void setHname(String hname) {
        this.hname = hname;
    }

    public String getHsex() {
        return hsex;
    }

    public void setHsex(String hsex) {
        this.hsex = hsex;
    }
}
