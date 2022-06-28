package com.spring.ex.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.CartDao;
import com.spring.ex.dao.CatMemberDao;
import com.spring.ex.dto.cartDto;
import com.spring.ex.dto.catMemberDto;
@Service
public class CartServiceMpl implements CartService{

	@Inject
	CartDao cartDao;
	
	@Override
	public int cartJoin(cartDto crdto) {
		return cartDao.cartJoin(crdto); //장바구니 추가
	}
	
	@Override
	public List<cartDto> cartList(String id){
		return cartDao.cartList(id); //장바구니 목록
	}
	
	@Override
	public int cartDeleteAll(String id) throws Exception{
		return cartDao.cartDeleteAll(id); //장바구니 비우기
	}
	
	@Override
	public int cartDelete(int number) throws Exception{
		return cartDao.cartDelete(number); //장바구니 상품 삭제
	}
}
