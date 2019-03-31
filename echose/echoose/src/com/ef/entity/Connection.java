package com.ef.entity;

import javax.persistence.*;

@Entity
@Table(name = "tbl_connection")
public class Connection {
    private int cid;
    private String cname;

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }
}
