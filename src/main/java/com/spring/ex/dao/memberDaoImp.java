package com.spring.ex.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.dto.adminDto;
import com.spring.ex.dto.catMemberDto;
import com.spring.ex.dto.memberDto;
@Repository
public class memberDaoImp implements memberDao {


	@Inject
	SqlSession sqlSesstion;
	
	@Override
	public memberDto memberInfo(String id) {
		return sqlSesstion.selectOne("member.memberInfo", id);
	}
	// 로그
	@Override
	public int loginUser(memberDto mdto){
		return sqlSesstion.selectOne("member.login",mdto);
		
	}
	
	// 아이디 찾기 
	@Override
	public String findId(memberDto mdto) {
		return sqlSesstion.selectOne("member.findId", mdto);
	}
	// 페스워드 찾기 
	@Override
	public String findPw(memberDto mdto) {
		return sqlSesstion.selectOne("member.findPw", mdto);
	}
	//아이디 체크 
	@Override
	public int idCheck(String id) {
		return sqlSesstion.selectOne("member.idCheck", id);
	}
	// 회원 가입 
	@Override
	public int join(memberDto mdto) {
		// TODO Auto-generated method stub
		return sqlSesstion.insert("member.join",mdto);
	}
	// 회원 정보 수정 
	@Override
	public int memberUpdate(memberDto mdto) {
		return sqlSesstion.update("member.memberUpdate", mdto);
	}
	
	//회원 리스트
	@Override
	public List<memberDto> memberList(){
		return sqlSesstion.selectList("member.list");
	}
	
	//관리자 로그인
	@Override
	public int adminLogin(adminDto adto) {
		return sqlSesstion.selectOne("member.adminLogin", adto);
	}
	
	//관리자 정보 가져오기
	@Override
	public adminDto adminInfo(String id) {
		return sqlSesstion.selectOne("member.adminInfo", id);
	}
	
	// 관리자 추가
	@Override
	public int adminJoin(adminDto adto) {
		return sqlSesstion.insert("member.adminJoin", adto);
	}
	
	//관리자 아이디
	@Override
	public List<adminDto> adminId(){
		return sqlSesstion.selectList("member.adminId");
	}
	
	//관리자 목록
	@Override
	public List<adminDto> adminList(){
		return sqlSesstion.selectList("member.adminList");
	}
	
	//관리자 수정
	@Override
	public int adminUpdate(adminDto adto) {
		return sqlSesstion.update("member.adminUpdate", adto);
	}
	
	//관리자 삭제
	@Override
	public int adminDelete(String id) {
		return sqlSesstion.delete("member.adminDelete", id);
	}
	@Override
	public List<memberDto> memberList2(String id) {
		return sqlSesstion.selectList("member.list2",id);
	}
	@Override
	public List<adminDto> adminInfo2(String id) {
		// TODO Auto-generated method stub
		return sqlSesstion.selectList("member.adminInfo", id);
	}

}
