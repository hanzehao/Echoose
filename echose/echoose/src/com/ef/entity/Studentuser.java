package com.ef.entity;

import javax.persistence.*;

@Entity
@Table(name = "tbl_studentuser")
public class Studentuser {
    private int suid;
    private String sname;
    private String sphone;
    private String spassword;
    private String semail;
    private String smajor;

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    public int getSuid() {
        return suid;
    }

    public void setSuid(int suid) {
        this.suid = suid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getSphone() {
        return sphone;
    }

    public void setSphone(String sphone) {
        this.sphone = sphone;
    }

    public String getSpassword() {
        return spassword;
    }

    public void setSpassword(String spassword) {
        this.spassword = spassword;
    }

    public String getSemail() {
        return semail;
    }

    public void setSemail(String semail) {
        this.semail = semail;
    }

    public String getSmajor() {
        return smajor;
    }

    public void setSmajor(String smajor) {
        this.smajor = smajor;
    }
}
