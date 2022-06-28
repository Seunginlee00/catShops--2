package com.spring.ex;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.ex.dto.boardPageDto;
import com.spring.ex.dto.memberDto;
import com.spring.ex.dto.productDto;
import com.spring.ex.model.Criteria2;
import com.spring.ex.service.SearchService;

@Controller
public class SearchController {
	@Inject
	SearchService searchservice;
	
	
	@RequestMapping("search")
	public String search(@RequestParam("type") String type, @RequestParam("keyword") String keyword , Criteria2 cri, Model model){
		String path = "";
		cri.setType(type);
		cri.setKeyword(keyword);
		
		if(type.equals("product")) {
			List<productDto> list = searchservice.getGoodsList(cri);
			model.addAttribute("list", list);
			model.addAttribute("pageMaker", new boardPageDto(cri, searchservice.goodsGetTotal()));
			path = "/admin/search2";
		}
		
		if(type.equals("member")) {
			List<memberDto> list2 = searchservice.getMemberList(cri);
			model.addAttribute("list", list2);
			model.addAttribute("pageMaker", new boardPageDto(cri, searchservice.MemberTotal()));
			path = "/admin/search";
		}
		
		return path;
	}
	
			
}


	
	

