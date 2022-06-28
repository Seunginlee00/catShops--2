package com.spring.ex.dao;

import java.util.List;

import javax.inject.Inject;

import com.spring.ex.dto.reviewDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.dto.boardDto;
import com.spring.ex.dto.offlineDto;
import com.spring.ex.dto.supportDto;
import com.spring.ex.model.Criteria;

@Repository
public class BoardDaolmp implements BoardDao{

	@Inject
	SqlSession sqlSesstion;
	
	@Override
	public List<boardDto> boardList() {
		// TODO Auto-generated method stub
		return sqlSesstion.selectList("board.boardlist");
	}

	@Override
	public int write(boardDto bdto) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("dao" + bdto.getB_content());
		return sqlSesstion.insert("board.write",bdto);
	}

	@Override
	public List<boardDto> boardNumList(int number) throws Exception {
		// TODO Auto-generated method stub
		return sqlSesstion.selectList("board.list2", number);
	}

	@Override
	public int modify(boardDto bdto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSesstion.update("board.modify",bdto);
	}

	@Override
	public int delete(int number) throws Exception {
		// TODO Auto-generated method stub
		return sqlSesstion.delete("board.detele", number);
	}

	@Override
	public int getTotal() throws Exception {
		// TODO Auto-generated method stub
		return sqlSesstion.selectOne("board.getTotal");
	}
// 오프라인 기록 게시판 제작중....드르륵 탁탁 
	@Override
	public List<boardDto> getListPaging(Criteria cri) {
		// TODO Auto-generated method stub
		return sqlSesstion.selectList("board.getListPaging", cri);
	}

	@Override
	public List<offlineDto> getListPaging2(Criteria cri) {
		// TODO Auto-generated method stub
		return sqlSesstion.selectList("board.getListPaging2", cri);
	}

	@Override
	public int write2(offlineDto odto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSesstion.insert("board.write2",odto);
	}

	@Override
	public int modify2(offlineDto odto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSesstion.update("board.modify2",odto);
	}

	@Override
	public int delete2(int number) throws Exception {
		// TODO Auto-generated method stub
		return sqlSesstion.delete("board.detele2", number);
	}

	@Override
	public List<offlineDto> boardNumList2(int number) throws Exception {
		// TODO Auto-generated method stub
		return sqlSesstion.selectList("board.list22", number);
	}
//support 
	@Override
	public List<supportDto> getListPaging3(Criteria cri) {
		// TODO Auto-generated method stub
		return sqlSesstion.selectList("board.list3",cri);
	}

	@Override
	public int write3(supportDto sdto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSesstion.insert("board.write3",sdto);
	}

	@Override
	public int modify3(supportDto sdto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSesstion.update("board.modify3",sdto);
	}

	@Override
	public int delete3(int number) throws Exception {
		// TODO Auto-generated method stub
		return sqlSesstion.delete("board.detele3",number);
	}

	@Override
	public List<supportDto> boardNumList3(int number) throws Exception {
		// TODO Auto-generated method stub
		return sqlSesstion.selectList("board.list33",number);
	}

	@Override
	public int answer(supportDto sdto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSesstion.update("board.answer",sdto);
	}

	@Override
	public int write4(reviewDto rdto) throws Exception {
		return sqlSesstion.insert("board.reviewInsert" , rdto);
	}

	@Override
	public List<reviewDto> list4() throws Exception {
		return sqlSesstion.selectList("board.reviewSelect");
	}

	@Override
	public List<reviewDto> list44(int number) throws Exception {
		return sqlSesstion.selectList("board.reviewSelect2",number);
	}

	@Override
	public int modfiy4(reviewDto rdto) throws Exception {
		return sqlSesstion.update("board.reviewModfiy",rdto);
	}

	@Override
	public int delete4(int number) throws Exception {
		return sqlSesstion.delete("board.reviewDelete",number);
	}


}
