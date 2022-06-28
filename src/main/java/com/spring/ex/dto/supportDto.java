package com.spring.ex.dto;

import java.sql.Date;

public class supportDto {
	private int s_number;
	private String s_type;
	private String s_content;
	private Date s_dates;
	private String s_check;
	private String s_check_content; 
	
	public String getS_check_content() {
		return s_check_content;
	}
	public void setS_check_content(String s_check_content) {
		this.s_check_content = s_check_content;
	}
	public String getS_check() {
		return s_check;
	}
	public void setS_check(String s_check) {
		this.s_check = s_check;
	}
	public int getS_number() {
		return s_number;
	}
	public void setS_number(int s_number) {
		this.s_number = s_number;
	}
	public String getS_type() {
		return s_type;
	}
	public void setS_type(String s_type) {
		this.s_type = s_type;
	}
	public String getS_content() {
		return s_content;
	}
	public void setS_content(String s_content) {
		this.s_content = s_content;
	}
	public Date getS_dates() {
		return s_dates;
	}
	public void setS_dates(Date s_dates) {
		this.s_dates = s_dates;
	}	
	
	public supportDto(int s_number, String s_type, String s_content, Date s_dates, String s_check,
			String s_check_content) {
		super();
		this.s_number = s_number;
		this.s_type = s_type;
		this.s_content = s_content;
		this.s_dates = s_dates;
		this.s_check = s_check;
		this.s_check_content = s_check_content;
	}

	
	
	
	
	
	
	
	
	

}
