package com.spring.ex.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.dto.catMemberDto;

@Repository
public class CatMemberDaolmp implements CatMemberDao{
	@Inject
	SqlSession sqlSesstion;
	
	// 고양이 회원 가입 
	@Override
	public int catJoin(catMemberDto cmdto) {
		// TODO Auto-generated method stub
		return sqlSesstion.insert("catMember.catJoin",cmdto);
	}
	
	//고양이 목록
	@Override
	public List<catMemberDto> catInfo(String id){
		return sqlSesstion.selectList("catMember.catInfo", id);
	}
	
	@Override
	public catMemberDto cat(String name) {
		return sqlSesstion.selectOne("catMember.cat", name);
	}
	
	//고양이 정보수정
	@Override
	public int catUpdate(catMemberDto cmdto) {
		return sqlSesstion.update("catMember.catUpdate", cmdto);
	}
	
	//고양이 이미지 수정
	@Override
	public int catImgUpdate(catMemberDto cmdto) {
		return sqlSesstion.update("catMember.catImgUpdate", cmdto);
	}
	
	//고양이 삭제
	@Override
	public int catDelete(String name) {
		return sqlSesstion.delete("catMember.catDelete", name);
	}
}
