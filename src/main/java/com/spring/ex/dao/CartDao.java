package com.spring.ex.dao;

import java.util.List;

import com.spring.ex.dto.cartDto;
import com.spring.ex.dto.productDto;

public interface CartDao {

	public int cartJoin(cartDto crdto); //장바구니 추가
	public List<cartDto> cartList(String id); //장바구니 목록 
	public int cartDelete(int number); //장바구니 상품 삭제
	public int cartDeleteAll(String id); //장바구니 비우기
	
}
