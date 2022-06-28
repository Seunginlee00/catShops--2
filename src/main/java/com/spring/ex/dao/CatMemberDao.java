package com.spring.ex.dao;

import java.util.List;

import com.spring.ex.dto.catMemberDto;
import com.spring.ex.dto.memberDto;

public interface CatMemberDao {

	public int catJoin(catMemberDto cmdto); // 고양이 회원 가입
	public List<catMemberDto> catInfo(String id);  //고양이 정보 가져오기
	public catMemberDto cat(String name); //한마리 정보 가져오기
	public int catUpdate(catMemberDto cmdto); //고양이 정보 업데이트
	public int catImgUpdate(catMemberDto cmdto); //고양이 이미지 수정
	public int catDelete(String name); //고양이 삭제
}
