package com.spring.ex.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.spring.ex.dto.adminDto;
import com.spring.ex.dto.memberDto;
import com.spring.ex.dto.productDto;

public interface ProductDao {
	
	public int productJoin(productDto pdto); //상품 등록
	public List<productDto> productList(); //상품 목록
	public productDto productInfo(int number); //상품상세
	public int productUpdate(productDto pdto); //상품 수정
	public int productDelete(int number); //상품 삭제
	public int productImgUpdate(productDto pdto); // 상품 이미지 수정
	
	public List<productDto> commonProductList(); //일반 상품 목록
	public List<productDto> subProductList(); //구독 상품 목록

}
