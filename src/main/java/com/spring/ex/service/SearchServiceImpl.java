package com.spring.ex.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.SearchDao;
import com.spring.ex.dto.memberDto;
import com.spring.ex.dto.productDto;
import com.spring.ex.model.Criteria2;
@Service
public class SearchServiceImpl implements SearchService {

	@Inject
	SearchDao searchdao;
	@Override
	public List<productDto> getGoodsList(Criteria2 cri) {
		// TODO Auto-generated method stub
		return searchdao.getGoodsList(cri);
	}

	@Override
	public int goodsGetTotal() {
		// TODO Auto-generated method stub
		return searchdao.goodsGetTotal();
	}

	@Override
	public List<memberDto> getMemberList(Criteria2 cri) {
		// TODO Auto-generated method stub
		return searchdao.getMemberList(cri);
	}

	@Override
	public int MemberTotal() {
		// TODO Auto-generated method stub
		return searchdao.MemberTotal();
	}

}
