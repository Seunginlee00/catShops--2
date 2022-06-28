package com.spring.ex.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.dto.cartDto;
import com.spring.ex.dto.catMemberDto;

@Repository
public class CartDaolmp implements CartDao{
	@Inject
	SqlSession sqlSesstion;
	
	//장바구니 추가
	@Override
	public int cartJoin(cartDto crdto) {
		return sqlSesstion.insert("cart.cartJoin", crdto);
	}
	
	//장바구니 목록
	@Override
	public List<cartDto> cartList(String id){
		return sqlSesstion.selectList("cart.cartList", id);
	}
	
	//장바구니 비우기
	@Override
	public int cartDeleteAll(String id) {
		return sqlSesstion.delete("cart.cartDeleteAll", id);
	}
	
	//장바구니 상품 삭제
	@Override
	public int cartDelete(int number) {
		return sqlSesstion.delete("cart.cartDelete", number);
	}
}
