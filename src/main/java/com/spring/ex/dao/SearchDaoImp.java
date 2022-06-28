package com.spring.ex.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.dto.memberDto;
import com.spring.ex.dto.productDto;
import com.spring.ex.model.Criteria2;
@Repository
public class SearchDaoImp implements SearchDao {
	
	@Inject
	SqlSession sqlSesstion;


	@Override
	public int goodsGetTotal() {
		return sqlSesstion.selectOne("search.goodsGetTotal");
	}


	@Override
	public List<productDto> getGoodsList(Criteria2 cri) {
		// TODO Auto-generated method stub
		return sqlSesstion.selectList("search.getGoodsList",cri);
	}


	@Override
	public List<memberDto> getMemberList(Criteria2 cri) {
		// TODO Auto-generated method stub
		return sqlSesstion.selectList("search.getMembersList",cri);
	}


	@Override
	public int MemberTotal() {
		// TODO Auto-generated method stub
		return sqlSesstion.selectOne("search.memberGetTotal");
	}

}
