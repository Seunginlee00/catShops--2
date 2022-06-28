package com.spring.ex.dto;

import java.sql.Date;

public class deliveryDto {
	private int d_number; //배송번호
	private String m_id; //유저아이디
	private int p_number; //상품 번호
	private String p_name; //상품 이름
	private int d_amount; //수량
	private int c_sum_price; //총 주문 가격
	private String d_recipient; //수령인
	private String d_postcode; //우편번호
	private String d_destination; //배송지
	private String d_message; //배송메세지
	private String d_state; // 배송상태
	private Date d_date; //주문날짜
	
	public deliveryDto() {}
	
	public deliveryDto(int d_number, String m_id, int p_number, String p_name, int d_amount, int c_sum_price, String d_recipient, String d_postcode, String d_destination, String d_message, String d_state, Date d_date) {
		this.d_number = d_number;
		this.m_id = m_id;
		this.p_number = p_number;
		this.p_name = p_name;
		this.d_amount = d_amount;
		this.c_sum_price = c_sum_price;
		this.d_recipient = d_recipient;
		this.d_postcode = d_postcode;
		this.d_destination = d_destination;
		this.d_message = d_message;
		this.d_state = d_state;
		this.d_date = d_date;
	}
	
	

	public String getD_postcode() {
		return d_postcode;
	}

	public void setD_postcode(String d_postcode) {
		this.d_postcode = d_postcode;
	}

	public String getD_message() {
		return d_message;
	}

	public void setD_message(String d_message) {
		this.d_message = d_message;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public int getD_amount() {
		return d_amount;
	}

	public void setD_amount(int d_amount) {
		this.d_amount = d_amount;
	}

	public int getD_number() {
		return d_number;
	}

	public void setD_number(int d_number) {
		this.d_number = d_number;
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

	public int getC_sum_price() {
		return c_sum_price;
	}

	public void setC_sum_price(int c_sum_price) {
		this.c_sum_price = c_sum_price;
	}

	public String getD_recipient() {
		return d_recipient;
	}

	public void setD_recipient(String d_recipient) {
		this.d_recipient = d_recipient;
	}

	public String getD_destination() {
		return d_destination;
	}

	public void setD_destination(String d_destination) {
		this.d_destination = d_destination;
	}

	public String getD_state() {
		return d_state;
	}

	public void setD_state(String d_state) {
		this.d_state = d_state;
	}

	public Date getD_date() {
		return d_date;
	}

	public void setD_date(Date d_date) {
		this.d_date = d_date;
	}
	
	
}
