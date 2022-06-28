package com.spring.ex;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.spring.ex.dto.catMemberDto;
import com.spring.ex.dto.memberDto;
import com.spring.ex.service.CatMemberService;

@Controller
public class CatMemberController {
	HttpSession session;
	
	//컴에 맞게 저장경로 수정!!
	String uploadFolder = "C:\\Users\\401ST000\\Catshop_Project\\catShops--2 4\\src\\main\\webapp\\resources\\images\\cats"; //학교컴
	//String uploadFolder = "C:\\Users\\User\\eclipse-workspace\\catShops--2 4\\src\\main\\webapp\\resources\\images\\cats";
	//String uploadFolder = "C:\\Users\\301ST000\\eclipse-workspace\\catShops--2\\src\\main\\webapp\\resources\\images\\cats"; // 학교3층컴 
	
	String relativePath = "resources/images/cats";
	
	@Inject
	CatMemberService catMemberService;

	// 고양이 회원 가입
	@RequestMapping("cat")
	public String catJoin() {
		return "cat_join";
	}
	
	@RequestMapping(value = "catOk", method = RequestMethod.POST)
	public String catJoinOK(@RequestParam("name") String name , @RequestParam("type") String type, @RequestParam("age") String age, @RequestParam("sex") String sex, @RequestParam("weight") String weight, @RequestParam("neutering") String neutering, @RequestParam("image") MultipartFile image, @RequestParam("id") String id, Model model ) {
		String path = "";
		String imgPath = "";
		String rPath = "";
		try {
			File uploadPath = new File(uploadFolder, id);
			System.out.println("uploadPath: " + uploadPath);
			if(uploadPath.exists() == false) {
				uploadPath.mkdirs();
			}
			
			String fileName = image.getOriginalFilename();
			System.out.println("fileName: " +fileName);
			fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
			File savefile = new File(uploadPath, fileName);
			System.out.println("savefile: " +savefile);
			image.transferTo(savefile);
			
			imgPath = uploadPath + "\\" +fileName;
			rPath = relativePath + "/" + id + "/" + fileName; 
			System.out.println("imgPath:" + imgPath);
			System.out.println("rPath: " + rPath);
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		catMemberDto cmdto = new catMemberDto(name, type, Integer.parseInt(age),sex, Double.parseDouble(weight), neutering , imgPath, rPath, id);
		int result = 0;
		try {
			result = catMemberService.catJoin(cmdto);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(result == 1) {
			path="cat_info";
		}else {
			System.out.println("고양이 등록 실패 ");
			path = "cat_info";
		}
		try {
			catModify(id, model);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return path;
		// 임시 추가 바람 
	}
	
	//고양이 정보불러오기
	@RequestMapping("cInfo")
	public String cInfo(@RequestParam("id") String id, Model model) throws Exception{
		System.out.println(id);
		
		List<catMemberDto> cmdtos = catMemberService.catInfo(id);
		model.addAttribute("cmdtos", cmdtos);
		
		return "cat_info";
	}
	
	// 고양이 정보 수정
	@RequestMapping("catModify")
	public String catModify(@RequestParam("id") String id, Model model) throws Exception{
		System.out.println(id);
		
		List<catMemberDto> cmdtos = catMemberService.catInfo(id);		
		model.addAttribute("cmdtos", cmdtos);
		
		return "cat_modify";
	}

		@RequestMapping(value = "/catModifyOk", method = RequestMethod.POST)
		public String catModifyOk(@RequestParam("name") String name , @RequestParam("type") String type, @RequestParam("age") String age, @RequestParam("sex") String sex, @RequestParam("weight") String weight, @RequestParam("neutering") String neutering, @RequestParam("id") String id,  Model model) throws Exception{
			String path = "";
			
			catMemberDto cmdto = new catMemberDto(name, type, Integer.parseInt(age),sex, Double.parseDouble(weight), neutering , null, null, id);
			int result = catMemberService.catUpdate(cmdto);
			
			if(result == 1) {
				System.out.println("정보수정 성공");
				path = "cat_info";
			}else {
				System.out.println("정보수정 실패");
				path = "cat_info";
			}
			catModify(id, model);
			return path;
		}
		
		//고양이 이미지 불러오기
		@RequestMapping("catImgModify")
		public String catImgModify(@RequestParam("name") String name, Model model) throws Exception{		
			catMemberDto cmdto = catMemberService.cat(name);
			model.addAttribute("cmdto", cmdto);
			
			return "cat_imageModify";
		}
		
		@RequestMapping(value = "/catImgModifyOk", method = RequestMethod.POST)
		public String catImgModifyOk(@RequestParam("image") MultipartFile image, @RequestParam("name") String name , @RequestParam("id") String id,  Model model) throws Exception{
			String path = "";
			String imgPath = "";
			String rPath = "";
			
			try {
				File uploadPath = new File(uploadFolder, id);
				System.out.println("uploadPath: " + uploadPath);
				if(uploadPath.exists() == false) {
					uploadPath.mkdirs();
				}
				
				String fileName = image.getOriginalFilename();
				System.out.println("fileName: " +fileName);
				fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
				File savefile = new File(uploadPath, fileName);
				System.out.println("savefile: " +savefile);
				image.transferTo(savefile);
				
				imgPath = uploadPath + "\\" +fileName;
				rPath = relativePath + "/" + id + "/" + fileName;
				System.out.println("imgPath: " +imgPath);
				System.out.println("rPath: " + rPath);
				
				
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			catMemberDto cmdto = new catMemberDto(name, null, 0, null, 0.0, null , imgPath, rPath, id);
			int result = catMemberService.catImgUpdate(cmdto);
			
			if(result == 1) {
				System.out.println("정보수정 성공");
				catModify(id, model);
				path = "cat_modify";
			}else {
				System.out.println("정보수정 실패");
				catImgModify(name, model);
				path = "cat_imageModify";
			}
			catModify(id, model);
			return path;
		}
		
		// 고양이 삭제
		@RequestMapping(value = "/catDeleteOk", method = RequestMethod.POST)
		public String catDeleteOk(@RequestParam("name") String name, @RequestParam("id") String id, Model model ) throws Exception{
			String path = "";

			int result = catMemberService.catDelete(name);
			
			if(result == 1) {
				System.out.println("삭제성공");
				path = "cat_info";
				
			}else {
				System.out.println("삭제실패");
				path = "cat_info";
			}
			catModify(id, model);
			return path;
		}

	
}
