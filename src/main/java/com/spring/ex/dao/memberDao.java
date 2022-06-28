package com.spring.ex.dao;

import java.util.List;

import com.spring.ex.dto.adminDto;
import com.spring.ex.dto.memberDto;

public interface memberDao {
	
	public memberDto memberInfo(String id);
	public int loginUser(memberDto mdto); // 로그인 
	public int join(memberDto mdto); //회원가입
	public int idCheck(String id); // 아이디 체크
	public String findId(memberDto mdto); //아이디 찾기 
	public String findPw(memberDto mdto);// 비밀번호 찾기 
	public int memberUpdate(memberDto mdto); // 회원 수정 
	public List<memberDto> memberList(); //회원 목록
	public List<memberDto> memberList2(String id); //회원 목록
	
	public List<adminDto> adminInfo2(String id); //관리자 정보 가져오기
	public adminDto adminInfo(String id); //관리자 정보 가져오기
	public int adminLogin(adminDto adto); // 관리자 로그인
	public int adminJoin(adminDto adto); //관리자 회원가입
	public List<adminDto> adminId(); //관리자 아이디
	public List<adminDto> adminList(); //관리자 목록
	public int adminUpdate(adminDto adto); //관리자 수정
	public int adminDelete(String id); //관리자 삭제
		
}
