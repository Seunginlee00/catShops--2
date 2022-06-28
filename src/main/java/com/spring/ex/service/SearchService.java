package com.spring.ex.service;

import java.util.List;

import com.spring.ex.dto.memberDto;
import com.spring.ex.dto.productDto;
import com.spring.ex.model.Criteria2;

public interface SearchService {
	/* 상품  검색 */
	public List<productDto> getGoodsList(Criteria2 cri);
	
	/* 상품 총 갯수 */
	public int goodsGetTotal();
	
	
	/* 사람   검색 */
	public List<memberDto> getMemberList(Criteria2 cri);
	
	/* 사람  총 인원  */
	public int MemberTotal();

}
