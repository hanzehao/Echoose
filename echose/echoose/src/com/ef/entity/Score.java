package com.ef.entity;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "tbl_cscore")
public class Score {
    private int cdis;
    private Date cyear;
    private String csscore;

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    public int getCdis() {
        return cdis;
    }

    public void setCdis(int cdis) {
        this.cdis = cdis;
    }

    public Date getCyear() {
        return cyear;
    }

    public void setCyear(Date cyear) {
        this.cyear = cyear;
    }

    public String getCsscore() {
        return csscore;
    }

    public void setCsscore(String csscore) {
        this.csscore = csscore;
    }
}
