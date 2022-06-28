package com.spring.ex.dto;

public class catMemberDto {
	private String c_name; // 고양이 이름 
	private String c_type; //고양이 종류 
	private int c_age;  //고양이 나이 
	private String c_sex; // 고양이 성별 
	private double c_weight; // 고양이 몸무게 
	private String c_neutering; // 고양이 중성화 여부 
	private String c_image; // 고양이 이미지
	private String c_r_image; //고양이 이미지 상대경로
	private String m_id; //주인 아이디
	
	public catMemberDto() {
		
	}
	
	public catMemberDto(String c_name, String c_type, int c_age, String c_sex, double c_weight, String c_neutering, String c_image, String c_r_image, String m_id) {
		super();
		this.c_name = c_name;
		this.c_type = c_type;
		this.c_age = c_age;
		this.c_sex = c_sex;
		this.c_weight = c_weight;
		this.c_neutering = c_neutering;
		this.c_image = c_image;
		this.c_r_image = c_r_image;
		this.m_id = m_id;
	}



	public String getC_r_image() {
		return c_r_image;
	}

	public void setC_r_image(String c_r_image) {
		this.c_r_image = c_r_image;
	}

	public String getC_image() {
		return c_image;
	}

	public void setC_image(String c_image) {
		this.c_image = c_image;
	}

	public String getM_id() {
		return m_id;
	}



	public void setM_id(String m_id) {
		this.m_id = m_id;
	}



	public String getC_name() {
		return c_name;
	}



	public void setC_name(String c_name) {
		this.c_name = c_name;
	}



	public String getC_type() {
		return c_type;
	}



	public void setC_type(String c_type) {
		this.c_type = c_type;
	}



	public int getC_age() {
		return c_age;
	}



	public void setC_age(int c_age) {
		this.c_age = c_age;
	}



	public String getC_sex() {
		return c_sex;
	}



	public void setC_sex(String c_sex) {
		this.c_sex = c_sex;
	}



	public double getC_weight() {
		return c_weight;
	}



	public void setC_weight(double c_weight) {
		this.c_weight = c_weight;
	}



	public String getC_neutering() {
		return c_neutering;
	}



	public void setC_neutering(String c_neutering) {
		this.c_neutering = c_neutering;
	}
	
	
	
	
}
