package com.ef.entity;

import javax.persistence.*;

@Entity
@Table(name = "tbl_news")
public class News {

    private int nid;
    private String ntitle;
    private String nauthor;
    private String ndate;
    private String ncontent;


    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)

    public int getNid() {
        return nid;
    }

    public void setNid(int nid) {
        this.nid = nid;
    }

    public String getNtitle() {
        return ntitle;
    }

    public void setNtitle(String ntitle) {
        this.ntitle = ntitle;
    }

    public String getNauthor() {
        return nauthor;
    }

    public void setNauthor(String nauthor) {
        this.nauthor = nauthor;
    }

    public String getNdate() {
        return ndate;
    }

    public void setNdate(String ndate) {
        this.ndate = ndate;
    }

    public String getNcontent() {
        return ncontent;
    }

    public void setNcontent(String ncontent) {
        this.ncontent = ncontent;
    }
}
