package com.spring.ex.dto;

import java.sql.Date;

public class offlineDto {
	
	private String m_name;
	private int o_number;
	private Date o_date;
	private String o_time;
	private String o_phone;
	private String o_content;
	

	
	public offlineDto() {
		
	}
	public offlineDto(String m_name, int o_number, Date o_date, String o_time, String o_phone, String o_content) {
		super();
		this.m_name = m_name;
		this.o_number = o_number;
		this.o_date = o_date;
		this.o_time = o_time;
		this.o_phone = o_phone;
		this.o_content = o_content;
	}
	public String getO_content() {
		return o_content;
	}
	public void setO_content(String o_content) {
		this.o_content = o_content;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public int getO_number() {
		return o_number;
	}
	public void setO_number(int o_number) {
		this.o_number = o_number;
	}
	public Date getO_date() {
		return o_date;
	}
	public void setO_date(Date o_date) {
		this.o_date = o_date;
	}
	public String getO_time() {
		return o_time;
	}
	public void setO_time(String o_time) {
		this.o_time = o_time;
	}
	public String getO_phone() {
		return o_phone;
	}
	public void setO_phone(String o_phone) {
		this.o_phone = o_phone;
	}
	@Override
	public String toString() {
		return "offlineDto [m_name=" + m_name + ", o_number=" + o_number + ", o_date=" + o_date + ", o_time=" + o_time
				+ ", o_phone=" + o_phone + ", o_content=" + o_content + "]";
	}
	


	
}
