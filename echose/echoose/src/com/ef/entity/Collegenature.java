package com.ef.entity;

import javax.persistence.*;

@Entity
@Table(name = "collegenature")
public class Collegenature {
    private int cnid;
    private String cnname;

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    public int getCnid() {
        return cnid;
    }

    public void setCnid(int cnid) {
        this.cnid = cnid;
    }

    public String getCnname() {
        return cnname;
    }

    public void setCnname(String cnname) {
        this.cnname = cnname;
    }
}
