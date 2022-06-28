package com.spring.ex.dto;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class productDto {
	private int p_number; //상품번호, 자동증가
	private String p_name; //상품이름
	private String p_kind; //상품종류
	private int p_price; //상품가격
	private int p_total; //총 팔린 가격
	private int p_stock; //상품 재고
	private String p_subscription; //구독서비스 여부
	private String p_content; // 세부사항
	private String p_image; //이미지
	private String p_r_image; //이미지 상대경로
	private Date p_date; //등록날짜
	
	public productDto() {
		
	}
	
	public productDto(int p_number, String p_name, String p_kind, int p_price, int p_total, int p_stock, String p_subscription, String p_content, String p_image, String p_r_image, Date p_date) {
		super();
		this.p_number = p_number;
		this.p_name = p_name;
		this.p_kind = p_kind;
		this.p_price = p_price;
		this.p_total = p_total;
		this.p_stock = p_stock;
		this.p_subscription = p_subscription;
		this.p_content = p_content;
		this.p_image = p_image;
		this.p_r_image = p_r_image;
		this.p_date = p_date;
	}
	
	
	
	public String getP_r_image() {
		return p_r_image;
	}

	public void setP_r_image(String p_r_image) {
		this.p_r_image = p_r_image;
	}

	public int getP_stock() {
		return p_stock;
	}

	public void setP_stock(int p_stock) {
		this.p_stock = p_stock;
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
	public String getP_kind() {
		return p_kind;
	}
	public void setP_kind(String p_kind) {
		this.p_kind = p_kind;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public int getP_total() {
		return p_total;
	}
	public void setP_total(int p_total) {
		this.p_total = p_total;
	}
	public String getP_subscription() {
		return p_subscription;
	}

	public void setP_subscription(String p_subscription) {
		this.p_subscription = p_subscription;
	}
	public String getP_content() {
		return p_content;
	}
	public void setP_content(String p_content) {
		this.p_content = p_content;
	}
	public String getP_image() {
		return p_image;
	}
	public void setP_image(String p_image) {
		this.p_image = p_image;
	}
	public Date getP_date() {
		return p_date;
	}
	public void setP_date(Date p_date) {
		this.p_date = p_date;
	}
	
	
}


