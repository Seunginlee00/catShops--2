package com.spring.ex.dto;


public class cartDto {
	private int cr_number; //장바구니 번호
	private String m_id; //유저 아이디
	private int p_number; // 상품 번호
	private String p_name; //상품이름
	private int cr_amount; //수량
	private int p_price; //상품 가격
	private int p_sum_price; //총 금액
	private String p_r_image; //상품 이미지 상대경로
	
	public cartDto() {}
	
	public cartDto(int cr_number, String m_id, int p_number, String p_name, int cr_amount, int p_price, int p_sum_price, String p_r_image) {
		this.cr_number = cr_number;
		this.m_id = m_id;
		this.p_number = p_number;
		this.p_name = p_name;
		this.cr_amount = cr_amount;
		this.p_price = p_price;
		this.p_sum_price = p_sum_price;
		this.p_r_image = p_r_image;
	}
	
	
	
	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public int getP_price() {
		return p_price;
	}

	public void setP_price(int p_price) {
		this.p_price = p_price;
	}

	public int getP_sum_price() {
		return p_sum_price;
	}

	public void setP_sum_price(int p_sum_price) {
		this.p_sum_price = p_sum_price;
	}

	public String getP_r_image() {
		return p_r_image;
	}

	public void setP_r_image(String p_r_image) {
		this.p_r_image = p_r_image;
	}

	public int getCr_number() {
		return cr_number;
	}
	public void setCr_number(int cr_number) {
		this.cr_number = cr_number;
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
	public int getCr_amount() {
		return cr_amount;
	}
	public void setCr_amount(int cr_amount) {
		this.cr_amount = cr_amount;
	}
	
	
}
