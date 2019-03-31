package com.ef.entity;


import javax.persistence.*;

@Entity
@Table(name = "tbl_address")
public class Address {

    private int aid;
    private String aprovience;

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public String getAprovience() {
        return aprovience;
    }

    public void setAprovience(String aprovience) {
        this.aprovience = aprovience;
    }
}
