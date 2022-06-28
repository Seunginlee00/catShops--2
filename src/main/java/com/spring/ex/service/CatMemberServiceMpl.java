package com.spring.ex.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.CatMemberDao;
import com.spring.ex.dto.catMemberDto;
@Service
public class CatMemberServiceMpl implements CatMemberService{

	@Inject
	CatMemberDao catMemberDao;
	@Override
	public int catJoin(catMemberDto cmdto) throws Exception {
		//고양이 회원 가입 
		return catMemberDao.catJoin(cmdto);
	}
	
	@Override
	public List<catMemberDto> catInfo(String id) throws Exception{
		//고양이 정보 불러오기
		return catMemberDao.catInfo(id);
	}
	
	@Override
	public catMemberDto cat(String name) throws Exception{
		//한마리 정보 가져오기
		return catMemberDao.cat(name);
	}
	
	@Override
	public int catUpdate(catMemberDto cmdto) throws Exception{
		//고양이 정보 업데이트
		return catMemberDao.catUpdate(cmdto);
	}
	
	@Override
	public int catImgUpdate(catMemberDto cmdto) throws Exception{
		//고양이 이미지 수정
		return catMemberDao.catImgUpdate(cmdto);
	}
	
	@Override
	public int catDelete(String name) throws Exception{
		//고양이 삭제
		return catMemberDao.catDelete(name);
	}

	
	
}
