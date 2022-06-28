package com.spring.ex.service;

import java.util.List;

import com.spring.ex.dto.cartDto;

public interface CartService {

	public int cartJoin(cartDto crdto) throws Exception; //장바구니 추가
	public List<cartDto> cartList(String id) throws Exception; //장바구니 목록
	public int cartDelete(int number) throws Exception; //장바구니 상품 삭제
	public int cartDeleteAll(String id) throws Exception; //장바구니 비우기
}
