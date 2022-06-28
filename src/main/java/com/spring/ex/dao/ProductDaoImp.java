package com.spring.ex.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.dto.productDto;

@Repository
public class ProductDaoImp implements ProductDao{
	@Inject
	SqlSession sqlSesstion;
	
	//상품등록
	@Override
	public int productJoin(productDto pdto) {
		return sqlSesstion.insert("product.productJoin", pdto);
	}
	//상품목록
	@Override
	public List<productDto> productList(){
		return sqlSesstion.selectList("product.productList");
	}
	
	//상품상세
	@Override
	public productDto productInfo(int number) {
		return sqlSesstion.selectOne("product.productInfo", number);
	}
	
	//상품 수정
	@Override
	public int productUpdate(productDto pdto) {
		return sqlSesstion.update("product.productUpdate", pdto);
	}
	
	//상품 삭제
	@Override
	public int productDelete(int number) {
		return sqlSesstion.delete("product.productDelete", number);
	}
	
	//상품이미지 수정
	@Override
	public int productImgUpdate(productDto pdto) {
		return sqlSesstion.update("product.productImgUpdate", pdto);
	}
	
	//일반 상품 목록
	@Override
	public List<productDto> commonProductList(){
		return sqlSesstion.selectList("product.commonProductList");
	}
	
	//구독 상품 목록
	@Override
	public List<productDto> subProductList(){
		return sqlSesstion.selectList("product.subProductList");
	}
}
