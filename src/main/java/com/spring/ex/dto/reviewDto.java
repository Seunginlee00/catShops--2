package com.spring.ex.dto;

import java.util.Date;

public class reviewDto {
    private int r_number;
    private String m_id;
    private String r_subject;
    private String r_content;
    private Date r_date;
    private String r_open;
    private String r_comment;

    public int getR_number() {
        return r_number;
    }

    public void setR_number(int r_number) {
        this.r_number = r_number;
    }

    public String getM_id() {
        return m_id;
    }

    public void setM_id(String m_id) {
        this.m_id = m_id;
    }

    public String getR_subject() {
        return r_subject;
    }

    public void setR_subject(String r_subject) {
        this.r_subject = r_subject;
    }

    public String getR_content() {
        return r_content;
    }

    public void setR_content(String r_content) {
        this.r_content = r_content;
    }

    public Date getR_date() {
        return r_date;
    }

    public void setR_date(Date r_date) {
        this.r_date = r_date;
    }

    public String getR_open() {
        return r_open;
    }

    public void setR_open(String r_open) {
        this.r_open = r_open;
    }

    public String getR_comment() {
        return r_comment;
    }

    public void setR_comment(String r_comment) {
        this.r_comment = r_comment;
    }

    public reviewDto(int r_number, String m_id, String r_subject, String r_content, Date r_date, String r_open, String r_comment) {
        this.r_number = r_number;
        this.m_id = m_id;
        this.r_subject = r_subject;
        this.r_content = r_content;
        this.r_date = r_date;
        this.r_open = r_open;
        this.r_comment = r_comment;
    }

    public reviewDto() {
        super();
    }

}
