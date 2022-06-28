package com.spring.ex.dto;

import java.sql.Date;

public class adminDto {
	private String a_id;
	private String a_pw;
	private String a_name;
	private String a_email;
	private Date a_date;
	
	public adminDto() {}
	
	public adminDto(String a_id, String a_pw, String a_name, String a_email, Date a_date) {
		this.a_id = a_id;
		this.a_pw = a_pw;
		this.a_name = a_name;
		this.a_email = a_email;
		this.a_date = a_date;
	}
	
	public String getA_id() {
		return a_id;
	}
	public void setA_id(String a_id) {
		this.a_id = a_id;
	}
	public String getA_pw() {
		return a_pw;
	}
	public void setA_pw(String a_pw) {
		this.a_pw = a_pw;
	}
	public String getA_name() {
		return a_name;
	}
	public void setA_name(String a_name) {
		this.a_name = a_name;
	}
	public String getA_email() {
		return a_email;
	}
	public void setA_email(String a_email) {
		this.a_email = a_email;
	}
	public Date getA_date() {
		return a_date;
	}
	public void setA_date(Date a_date) {
		this.a_date = a_date;
	}
	
	
}
