package com.spring.ex.service;

import java.util.List;

import com.spring.ex.dto.cartDto;
import com.spring.ex.dto.deliveryDto;
import com.spring.ex.dto.subdeliveryDto;

public interface DeliveryService {

	public int deliveryJoin(deliveryDto ddto) throws Exception; //배송정보 추가
	public List<deliveryDto> deliveryList(int number) throws Exception; //배송정보 목록 
	public List<deliveryDto> deliveryListAll() throws Exception; //전체 주문 목록
	public int deliveryStatusUpdate(deliveryDto ddto)throws Exception; //배송상태 수정 
	public List<deliveryDto> deliveryListUser(String id) throws Exception; //유저 주문목록 
	
	public int subdeliveryJoin(subdeliveryDto sddto) throws Exception; //구독 배송정보 추가
	public List<subdeliveryDto> subdeliveryList(String id) throws Exception; //구독 배송정보 목록
	public List<subdeliveryDto> subdeliveryListAll() throws Exception; //관리자 구독 정보 목록
	public subdeliveryDto subdeliveryListD(int number) throws Exception; //관리자 구독 정보 세부
	public int subdeliveryDelete(int number) throws Exception; //구독정보 삭제
}
