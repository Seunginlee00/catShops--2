package com.spring.ex.service;

import java.util.List;

import com.spring.ex.dto.catMemberDto;

public interface CatMemberService {

	public int catJoin(catMemberDto cmdto) throws Exception; // 고양이 회원 가입 
	public List<catMemberDto> catInfo(String id) throws Exception; //고양이 정보 불러오기
	public catMemberDto cat(String name) throws Exception; //한마리 정보 가져오기
	public int catUpdate(catMemberDto cmdto) throws Exception; //고양이 정보 업데이트
	public int catImgUpdate(catMemberDto cmdto) throws Exception; //고양이 이미지 수정
	public int catDelete(String name) throws Exception; //고양이 삭제
}
