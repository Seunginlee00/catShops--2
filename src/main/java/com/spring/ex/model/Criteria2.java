package com.spring.ex.model;

public class Criteria2 {
	
	private int pageNum; // 현제 페이지
	private int amount; // 페이지 표시 개수
	private int skip; // 뭔라 만들래 썅 
	public int getSkip() {
		return skip;
	}

	public void setSkip(int skip) {
		this.skip = skip;
	}

	private String type; // 검색 타입 
	private String p_type; //검색 타입 구분용 
	
	private String keyword;//검색키워드
	private String member; // 회원이름 
	private String product; // 상품 이름
	private String company; // 기업 이름 
	
	
	
	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getP_type() {
		return p_type;
	}

	public void setP_type(String p_type) {
		this.p_type = p_type;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getMember() {
		return member;
	}

	public void setMember(String member) {
		this.member = member;
	}

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}


	
	
	public Criteria2() {
		this(1,10);
	}
	
	public Criteria2(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}

	public String[] getTypeArr() {
		return type == null? new String[] {}:type.split("");
	}

	@Override
	public String toString() {
		return "Criteria2 [pageNum=" + pageNum + ", amount=" + amount + ", skip=" + skip + ", type=" + type
				+ ", p_type=" + p_type + ", keyword=" + keyword + ", member=" + member + ", product=" + product
				+ ", company=" + company + "]";
	}





	

}
