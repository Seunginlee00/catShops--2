package com.spring.ex.dto;

import java.sql.Date;

public class subdeliveryDto {
	private int sd_number; //구독주문 번호 
	private String m_id; //회원 아이디
	private int p_number; //상품 번호
	private String p_name; //상품이름
	private String p_r_image; //상품이미지 상대경로
	private int sd_amount; //주문 수량
	private int c_sum_price; //총 주문 금액
	private String sd_recipient; //수령인
	private String sd_postcode; //우편번호
	private String sd_destination; //주소
	private String sd_message; //배송메세지
	private String sd_state; //배송 상태
	private int sd_month; //배송 개월
	private Date sd_start_date; //구독 시작 날짜
	private Date sd_next_date; // 마지막 상품 발송 날짜
	
	public subdeliveryDto() {}
	
	public subdeliveryDto(int sd_number, String m_id, int p_number, String p_name, String p_r_image, int sd_amount, int c_sum_price, String sd_recipient, String sd_postcode, String sd_destination, String sd_message, String sd_state, int sd_month, Date sd_start_date, Date sd_next_date) {
		this.sd_number = sd_number;
		this.m_id = m_id;
		this.p_number = p_number;
		this.p_name = p_name;
		this.p_r_image = p_r_image;
		this.sd_amount = sd_amount;
		this.c_sum_price = c_sum_price;
		this.sd_recipient = sd_recipient;
		this.sd_postcode = sd_postcode;
		this.sd_destination = sd_destination;
		this.sd_message = sd_message;
		this.sd_state = sd_state;
		this.sd_month = sd_month;
		this.sd_start_date = sd_start_date;
		this.sd_next_date = sd_next_date;
	}

	public int getSd_number() {
		return sd_number;
	}

	public void setSd_number(int sd_number) {
		this.sd_number = sd_number;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public int getP_number() {
		return p_number;
	}

	public void setP_number(int p_number) {
		this.p_number = p_number;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	

	public String getP_r_image() {
		return p_r_image;
	}

	public void setP_r_image(String p_r_image) {
		this.p_r_image = p_r_image;
	}

	public int getSd_amount() {
		return sd_amount;
	}

	public void setSd_amount(int sd_amount) {
		this.sd_amount = sd_amount;
	}

	public int getC_sum_price() {
		return c_sum_price;
	}

	public void setC_sum_price(int c_sum_price) {
		this.c_sum_price = c_sum_price;
	}

	public String getSd_recipient() {
		return sd_recipient;
	}

	public void setSd_recipient(String sd_recipient) {
		this.sd_recipient = sd_recipient;
	}

	public String getSd_postcode() {
		return sd_postcode;
	}

	public void setSd_postcode(String sd_postcode) {
		this.sd_postcode = sd_postcode;
	}

	public String getSd_destination() {
		return sd_destination;
	}

	public void setSd_destination(String sd_destination) {
		this.sd_destination = sd_destination;
	}

	public String getSd_message() {
		return sd_message;
	}

	public void setSd_message(String sd_message) {
		this.sd_message = sd_message;
	}

	public String getSd_state() {
		return sd_state;
	}

	public void setSd_state(String sd_state) {
		this.sd_state = sd_state;
	}

	public int getSd_month() {
		return sd_month;
	}

	public void setSd_month(int sd_month) {
		this.sd_month = sd_month;
	}

	public Date getSd_start_date() {
		return sd_start_date;
	}

	public void setSd_start_date(Date sd_start_date) {
		this.sd_start_date = sd_start_date;
	}

	public Date getSd_next_date() {
		return sd_next_date;
	}

	public void setSd_next_date(Date sd_next_date) {
		this.sd_next_date = sd_next_date;
	}

	
	
	
}
