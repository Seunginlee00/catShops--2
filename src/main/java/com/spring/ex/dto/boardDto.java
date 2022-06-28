package com.spring.ex.dto;

import java.sql.Date;


public class boardDto {
	
	private int b_number;
	private String b_subject;
	private String b_content;
	private String b_name;
	private Date b_date;
	private int b_readCount;
	
	
	public boardDto() {}
	
	
	
	public boardDto(int b_number, String b_subject, String b_content, String b_name, Date b_date, int b_readCount
			) {
		super();
		this.b_number = b_number;
		this.b_subject = b_subject;
		this.b_content = b_content;
		this.b_name = b_name;
		this.b_date = b_date;
		this.b_readCount = b_readCount;
		
	}



	public int getB_number() {
		return b_number;
	}
	public void setB_number(int b_number) {
		this.b_number = b_number;
	}
	public String getB_subject() {
		return b_subject;
	}
	public void setB_subject(String b_subject) {
		this.b_subject = b_subject;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	public String getB_name() {
		return b_name;
	}
	public void setB_name(String b_name) {
		this.b_name = b_name;
	}
	public Date getB_date() {
		return b_date;
	}
	public void setB_date(Date b_date) {
		this.b_date = b_date;
	}
	public int getB_readCount() {
		return b_readCount;
	}
	public void setB_readCount(int b_readCount) {
		this.b_readCount = b_readCount;
	}


	
	
}
