package com.spring.ex.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.memberDao;
import com.spring.ex.dto.adminDto;
import com.spring.ex.dto.catMemberDto;
import com.spring.ex.dto.memberDto;

@Service
public class MemberServiceIMpl implements MemberSerivce {

	@Inject
	memberDao memberdao;

	
	@Override
	public memberDto memberInfo(String id) {
		return memberdao.memberInfo(id); 
	}
	
	@Override
	public int loginUser(memberDto mdto) throws Exception {
		return memberdao.loginUser(mdto); // 로그
	}
	
	@Override
	public String findId(memberDto mdto) throws Exception{
		return memberdao.findId(mdto); // 아이디 찾기 
	}
	
	@Override
	public String findPw(memberDto mdto) throws Exception{
		return memberdao.findPw(mdto); //비밀번호 찾기 
	}

	@Override
	public int join(memberDto mdto) throws Exception {
		return memberdao.join(mdto); // 회원 가입 
	}
	
	@Override
	public int idCheck(String id) throws Exception{
		return memberdao.idCheck(id); // 아이디 중복 체크 
	}
	
	@Override
	public int memberUpdate(memberDto mdto) throws Exception{
		return memberdao.memberUpdate(mdto); //회원 수정 
	}
	
	@Override
	public int adminLogin(adminDto adto) throws Exception{
		return memberdao.adminLogin(adto); //관리자 로그인
	}
	
	@Override
	public adminDto adminInfo(String id) throws Exception{
		return memberdao.adminInfo(id); //관리자 정보 가져오기
	}
	
	@Override
	public int adminJoin(adminDto adto) throws Exception{
		return memberdao.adminJoin(adto); //관리자 추가
	}
	
	@Override
	public List<adminDto> adminId() throws Exception{
		return memberdao.adminId(); //관리자 아이디
	}
	
	@Override
	public List<adminDto> adminList() throws Exception{
		return memberdao.adminList(); //관리자 목록
	}
	
	@Override
	public int adminUpdate(adminDto adto) throws Exception{
		return memberdao.adminUpdate(adto); //관리자 수정
	}
	
	@Override
	public int adminDelete(String id) throws Exception{
		return memberdao.adminDelete(id); //관리자 삭제
	}

	@Override
	public List<memberDto> memberList() {
		// TODO Auto-generated method stub
		return memberdao.memberList();
	}

	@Override
	public List<memberDto> memberList2(String id) {
		// TODO Auto-generated method stub
		return memberdao.memberList2(id);
	}

	@Override
	public List<adminDto> adminInfo2(String id) {
		// TODO Auto-generated method stub
			return memberdao.adminInfo2(id);
	}

}
