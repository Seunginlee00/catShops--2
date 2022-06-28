package com.spring.ex.service;

import java.util.List;

import com.spring.ex.dto.productDto;

public interface ProductService {
	public int productJoin(productDto pdto) throws Exception; //상품 등록
	public List<productDto> productList() throws Exception; //상품 목록
	public productDto productInfo(int number) throws Exception; //상품상세
	public int productUpdate(productDto pdto) throws Exception; //상품 수정
	public int productDelete(int number) throws Exception; //상품 삭제
	public int productImgUpdate(productDto pdto) throws Exception; // 상품 이미지 수정
	
	public List<productDto> commonProductList() throws Exception; //일반 상품 목록
	public List<productDto> subProductList() throws Exception; //구독 상품 목록
}
