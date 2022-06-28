package com.spring.ex.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.dto.cartDto;
import com.spring.ex.dto.catMemberDto;
import com.spring.ex.dto.deliveryDto;
import com.spring.ex.dto.subdeliveryDto;

@Repository
public class DeliveryDaolmp implements DeliveryDao{
	@Inject
	SqlSession sqlSesstion;
	
	//주문내역 추가
	@Override
	public int deliveryJoin(deliveryDto ddto) {
		return sqlSesstion.insert("delivery.deliveryJoin", ddto);
	}
	
	//배송정보 목록
	@Override
	public List<deliveryDto> deliveryList(int number){
		return sqlSesstion.selectList("delivery.deliveryList", number);
	}
	
	//전체 주문목록
	@Override
	public List<deliveryDto> deliveryListAll(){
		return sqlSesstion.selectList("delivery.deliveryListAll");
	}
	
	//유저 주문목록 확인
	@Override
	public List<deliveryDto> deliveryListUser(String id){
		return sqlSesstion.selectList("delivery.deliveryListUser", id);
	}
	
	//배송상태 수정
	@Override
	public int deliveryStatusUpdate(deliveryDto ddto) {
		return sqlSesstion.update("delivery.deliveryStatusUpdate", ddto);
	}
	
	//구독배송정보 추가
	@Override
	public int subdeliveryJoin(subdeliveryDto sddto) {
		return sqlSesstion.insert("delivery.subdeliveryJoin", sddto);
	}
	
	//구독 배송정보 목록
	@Override
	public List<subdeliveryDto> subdeliveryList(String id){
		return sqlSesstion.selectList("delivery.subdeliveryList", id);
	}
	
	//관리자 구독 배송정보 목록
	@Override
	public List<subdeliveryDto> subdeliveryListAll(){
		return sqlSesstion.selectList("delivery.subdeliveryListAll");
	}
	
	//관리자 구독정보 세부
	@Override
	public subdeliveryDto subdeliveryListD(int number){
		return sqlSesstion.selectOne("delivery.subdeliveryListD", number);
	}
	
	//구독정보 삭제
	@Override
	public int subdeliveryDelete(int number) {
		return sqlSesstion.delete("delivery.subdeliveryDelete", number);
	}
}
