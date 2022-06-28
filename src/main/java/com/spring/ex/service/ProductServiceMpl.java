package com.spring.ex.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.ProductDao;
import com.spring.ex.dto.productDto;

@Service
public class ProductServiceMpl implements ProductService{
	@Inject
	ProductDao productDao;
	
	@Override
	public int productJoin(productDto pdto) throws Exception{
		return productDao.productJoin(pdto); //상품 등록
	}
	
	@Override
	public List<productDto> productList() throws Exception{
		return productDao.productList(); //상품 목록
	}
	
	@Override
	public productDto productInfo(int number) throws Exception{
		return productDao.productInfo(number); //상품상세
	}
	
	@Override
	public int productUpdate(productDto pdto)throws Exception{
		return productDao.productUpdate(pdto); //상품 수정
	}
	
	@Override
	public int productDelete(int number) throws Exception{
		return productDao.productDelete(number); //상품 삭제
	}
	
	@Override
	public int productImgUpdate(productDto pdto) throws Exception{
		return productDao.productImgUpdate(pdto); // 상품 이미지 수정
	}
	
	@Override
	public List<productDto> commonProductList() throws Exception{
		return productDao.commonProductList(); //일반 상품 목록
	}
	
	@Override
	public List<productDto> subProductList() throws Exception {
		return productDao.subProductList(); //구독 상품 목록
	}

}
