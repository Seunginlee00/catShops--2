package com.spring.ex.service;

import java.util.List;

import javax.inject.Inject;

import com.spring.ex.dto.reviewDto;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.BoardDao;
import com.spring.ex.dto.boardDto;
import com.spring.ex.dto.offlineDto;
import com.spring.ex.dto.supportDto;
import com.spring.ex.model.Criteria;
@Service
public class BoardSerivceImpl implements BoardService {

	@Inject
	BoardDao boarddao;
	
	@Override
	public List<boardDto> boardList() {
		// TODO Auto-generated method stub
		return boarddao.boardList();
	}

	@Override
	public int write(boardDto bdto) throws Exception {
		
		// TODO Auto-generated method stub
		return boarddao.write(bdto);
	}

	@Override
	public List<boardDto> boardNumList(int number) throws Exception {
		// TODO Auto-generated method stub
		return boarddao.boardNumList(number);
	}

	@Override
	public int modify(boardDto bdto) throws Exception {
		// TODO Auto-generated method stub
		return boarddao.modify(bdto);
	}

	@Override
	public int delete(int number) throws Exception {
		// TODO Auto-generated method stub
		return boarddao.delete(number);
	}

	@Override
	public int getTotal() throws Exception {
		// TODO Auto-generated method stub
		return boarddao.getTotal();
	}

	@Override
	public List<boardDto> getListPaging(Criteria cri) {
		// TODO Auto-generated method stub
		return boarddao.getListPaging(cri);
	}

	// 오프라인 
	@Override
	public List<offlineDto> getListPaging2(Criteria cri) {
		// TODO Auto-generated method stub
		return boarddao.getListPaging2(cri);
	}

	@Override
	public int write2(offlineDto odto) throws Exception {
		// TODO Auto-generated method stub
		return boarddao.write2(odto);
	}

	@Override
	public int modify2(offlineDto odto) throws Exception {
		// TODO Auto-generated method stub
		return boarddao.modify2(odto);
	}

	@Override
	public int delete2(int number) throws Exception {
		// TODO Auto-generated method stub
		return boarddao.delete2(number);
	}

	@Override
	public List<offlineDto> boardNumList2(int number) throws Exception {
		// TODO Auto-generated method stub
		return boarddao.boardNumList2(number);
	}

	
	/// support
	@Override
	public List<supportDto> getListPaging3(Criteria cri) {
		// TODO Auto-generated method stub
		return boarddao.getListPaging3(cri);
	}

	@Override
	public int write3(supportDto sdto) throws Exception {
		// TODO Auto-generated method stub
		return boarddao.write3(sdto);
	}

	@Override
	public int modify3(supportDto sdto) throws Exception {
		// TODO Auto-generated method stub
		return boarddao.modify3(sdto);
	}

	@Override
	public int delete3(int number) throws Exception {
		// TODO Auto-generated method stub
		return boarddao.delete3(number);
	}

	@Override
	public List<supportDto> boardNumList3(int number) throws Exception {
		// TODO Auto-generated method stub
		return boarddao.boardNumList3(number);
	}

	@Override
	public int answer(supportDto sdto) throws Exception {
		// TODO Auto-generated method stub
		return boarddao.answer(sdto);
	}

	@Override
	public int write4(reviewDto rdto) throws Exception {
		return boarddao.write4(rdto);
	}

	@Override
	public List<reviewDto> list4() throws Exception {
		return boarddao.list4();
	}

	@Override
	public List<reviewDto> list44(int number) throws Exception {
		return boarddao.list44(number);
	}

	@Override
	public int modfiy4(reviewDto rdto) throws Exception {
		return boarddao.modfiy4(rdto);
	}

	@Override
	public int delete4(int number) throws Exception {
		return boarddao.delete4(number);
	}


}
