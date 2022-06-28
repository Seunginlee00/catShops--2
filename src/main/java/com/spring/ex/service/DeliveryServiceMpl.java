package com.spring.ex.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.CartDao;
import com.spring.ex.dao.CatMemberDao;
import com.spring.ex.dao.DeliveryDao;
import com.spring.ex.dto.cartDto;
import com.spring.ex.dto.catMemberDto;
import com.spring.ex.dto.deliveryDto;
import com.spring.ex.dto.subdeliveryDto;
@Service
public class DeliveryServiceMpl implements DeliveryService{

	@Inject
	DeliveryDao deliveryDao;
	
	@Override
	public int deliveryJoin(deliveryDto ddto) throws Exception{
		return deliveryDao.deliveryJoin(ddto); //배송정보 추가
	}
	
	@Override
	public List<deliveryDto> deliveryList(int number) throws Exception{
		return deliveryDao.deliveryList(number); //배송정보 목록 
	}
	
	@Override
	public List<deliveryDto> deliveryListAll() throws Exception{
		return deliveryDao.deliveryListAll(); //전체 주문 목록
	}
	
	@Override
	public List<deliveryDto> deliveryListUser(String id) throws Exception{
		return deliveryDao.deliveryListUser(id); //유저 주문목록 
	}
	
	@Override
	public int deliveryStatusUpdate(deliveryDto ddto) throws Exception{
		return deliveryDao.deliveryStatusUpdate(ddto); //배송상태 수정 
	}
	@Override
	public int subdeliveryJoin(subdeliveryDto sddto) throws Exception{
		return deliveryDao.subdeliveryJoin(sddto); //구독 배송정보 추가
	}
	
	@Override
	public List<subdeliveryDto> subdeliveryList(String id) throws Exception{
		return deliveryDao.subdeliveryList(id); //구독 배송정보 목록
	}
	
	@Override
	public List<subdeliveryDto> subdeliveryListAll() throws Exception{
		return deliveryDao.subdeliveryListAll(); //관리자 구독 정보 목록
	}
	
	@Override
	public subdeliveryDto subdeliveryListD(int number) throws Exception{
		return deliveryDao.subdeliveryListD(number); //관리자 구독 정보 세부
	}
	
	@Override
	public int subdeliveryDelete(int number) throws Exception{
		return deliveryDao.subdeliveryDelete(number); //구독정보 삭제
	}
}
