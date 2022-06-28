package com.spring.ex.dao;

import java.util.List;

import com.spring.ex.dto.cartDto;
import com.spring.ex.dto.deliveryDto;
import com.spring.ex.dto.productDto;
import com.spring.ex.dto.subdeliveryDto;

public interface DeliveryDao {

	public int deliveryJoin(deliveryDto ddto); //배송정보 추가
	public List<deliveryDto> deliveryList(int number); //배송정보 목록
	public List<deliveryDto> deliveryListAll(); //전체 주문 목록
	public int deliveryStatusUpdate(deliveryDto ddto); //배송상태 수정 
	public List<deliveryDto> deliveryListUser(String id); //유저 주문목록 
	
	public int subdeliveryJoin(subdeliveryDto sddto); //구독 배송정보 추가
	public List<subdeliveryDto> subdeliveryList(String id); //구독 배송정보 목록
	public List<subdeliveryDto> subdeliveryListAll(); //관리자 구독 정보 목록
	public subdeliveryDto subdeliveryListD(int number); //관리자 구독 정보 세부
	public int subdeliveryDelete(int number); //구독정보 삭제
}
