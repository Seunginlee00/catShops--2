package com.spring.ex.service;

import java.util.List;

import com.spring.ex.dto.boardDto;
import com.spring.ex.dto.offlineDto;
import com.spring.ex.dto.reviewDto;
import com.spring.ex.dto.supportDto;
import com.spring.ex.model.Criteria;

public interface BoardService {
	public List<boardDto> boardList(); // 글 목록 
	public int write(boardDto bdto) throws Exception; // 글쓰기 
	public List<boardDto> boardNumList(int number) throws Exception;  // 번호로 불러오기 
	public int modify(boardDto bdto) throws Exception; // 글 수정하기
	public int delete(int number) throws Exception; //삭제하
	public int getTotal() throws Exception; // 글갯수
	/* 게시판 목록(페이징 적용) */
    public List<boardDto> getListPaging(Criteria cri);
	
    public List<offlineDto> getListPaging2(Criteria cri);
    public int write2(offlineDto odto) throws Exception; // 글쓰기 
    public int modify2(offlineDto odto) throws Exception; // 글 수정하기
	public int delete2(int number) throws Exception; //삭제하
	public List<offlineDto> boardNumList2(int number) throws Exception; // 번호로 불러오기 
    //support
	
	public List<supportDto> getListPaging3(Criteria cri);
    public int write3(supportDto sdto) throws Exception; // 글쓰기 
    public int modify3(supportDto sdto) throws Exception; // 글 수정하기 
	public int delete3(int number) throws Exception; // 삭제~

	public List<supportDto> boardNumList3(int number) throws Exception; // 번호로 불러오기 
	public int answer(supportDto sdto) throws Exception;
// review 게시판
	public int write4(reviewDto rdto) throws Exception;

	public List<reviewDto> list4() throws Exception;
	public List<reviewDto> list44(int number) throws Exception;
	public int modfiy4(reviewDto rdto) throws Exception;
	public int delete4(int number) throws Exception;
}
