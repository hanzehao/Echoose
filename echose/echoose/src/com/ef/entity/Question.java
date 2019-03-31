package com.ef.entity;

import javax.persistence.*;

@Entity
@Table(name = "tbl_question")
public class Question {
    private int qid;
    private String qname;
    private String qanswer;

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    public int getQid() {
        return qid;
    }

    public void setQid(int qid) {
        this.qid = qid;
    }

    public String getQname() {
        return qname;
    }

    public void setQname(String qname) {
        this.qname = qname;
    }

    public String getQanswer() {
        return qanswer;
    }

    public void setQanswer(String qanswer) {
        this.qanswer = qanswer;
    }
}
