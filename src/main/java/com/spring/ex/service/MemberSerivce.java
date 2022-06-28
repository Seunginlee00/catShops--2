package com.spring.ex.service;

import java.util.List;

import com.spring.ex.dto.adminDto;
import com.spring.ex.dto.catMemberDto;
import com.spring.ex.dto.memberDto;

public interface MemberSerivce {

	public memberDto memberInfo(String id);
	public int loginUser(memberDto mdto) throws Exception; // 로그
	public String findId(memberDto mdto) throws Exception; // 아이디 찾기 
	public String findPw(memberDto mdto) throws Exception; // 비밀번호 찾기
	public int join(memberDto mdto) throws Exception; // 회원 가입 
	public int idCheck(String id) throws Exception; // 아이디 중복 확인
	public int memberUpdate(memberDto mdto) throws Exception; // 회원 정보 수정 
	public List<memberDto> memberList(); //회원 목록
	public List<memberDto> memberList2(String id); //회원 목록
	
	public List<adminDto> adminInfo2(String id); //관리자 정보 가져오기
	public int adminLogin(adminDto adto) throws Exception; //관리자 로그인
	public adminDto adminInfo(String id) throws Exception; //관리자 정보가져오기
	public int adminJoin(adminDto adto) throws Exception; //관리자 회원가입
	public List<adminDto> adminId() throws Exception; //관리자 아이디
	public List<adminDto> adminList() throws Exception; //관리자 목록
	public int adminUpdate(adminDto adto) throws Exception; //관리자 수정
	public int adminDelete(String id) throws Exception; //관리자 삭제

}
