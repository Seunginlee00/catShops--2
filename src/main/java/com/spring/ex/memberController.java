package com.spring.ex;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import com.spring.ex.dto.*;
import com.spring.ex.service.*;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class memberController {
	
	@Inject
	MemberSerivce memberService;
	
	@Inject
	CatMemberService catmemberService;
	
	@Inject
	ProductService productservice;
	
	@Inject
	DeliveryService deliveryService;
	@Inject
	BoardService boardService;

	@RequestMapping("index")
	public String main() {
		return "index";
	}

	@RequestMapping("shop")
	public String shop() {
		return "shop";
	}
	
	@RequestMapping("can1")
	public String can1(Model model) throws Exception {
		List<reviewDto> rdtos = boardService.list4();
		model.addAttribute("rdtos",rdtos);
		return "can1";
	}
	
	@RequestMapping("myPage")
	public String myPage(@RequestParam("id") String id, Model model) {
		try {
			List<deliveryDto> ddtos = deliveryService.deliveryListUser(id);
			List<subdeliveryDto> sddtos = deliveryService.subdeliveryList(id);
			
			model.addAttribute("ddtos", ddtos);
			model.addAttribute("sddtos", sddtos);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "myPage";
	}
	

	@RequestMapping("subhis")
	public String subhis() {
		return "subscribeHistory";
	}
	

	@RequestMapping("inquiry")
	public String inquiry() {
		return "inquiry";
	}
	//페이먼트 
	
	@RequestMapping("rankingShop")
	public String rankingShop() {
		return "rankingShop";
	}
	
	@RequestMapping("cancel")
	public String cancel() {
		return "cancelReturnExchange";
	}
	
	@RequestMapping("deliveryStatus")
	public String deliveryStatus() {
		return "deliveryStatus";
	}
	
	@RequestMapping("productManagement")
	public String productManagement(Model model) throws Exception{
		List<productDto> pdto = productservice.productList();
		//System.out.println(pdto);
		model.addAttribute("list", pdto);
		return "/admin/productManagement";
	}
	
	
	@RequestMapping("addProduct")
	public String addProduct(){
		
		return "/admin/addProduct";
	}
	
	@RequestMapping("shippingManagement")
	public String shippingManagement(){
		return "/admin/shippingManagement";
	}
	
	@RequestMapping("orderReviewDetail")
	public String orderReviewDetail() {
		return "/admin/orderReviewDetail";
	}
	
	@RequestMapping("editInformation")
	public String editInformation( Model model) {
		List<memberDto> mdtos = memberService.memberList();
		model.addAttribute("list", mdtos);
		return "editInformation";
	}
	
	@RequestMapping("memberDetails")
	public String memberDetails(@RequestParam("m_id") String id, Model model) throws Exception {
		List<memberDto> mdtos = memberService.memberList2(id);
		List<catMemberDto> cdtos = catmemberService.catInfo(id);
		model.addAttribute("list", mdtos);
		model.addAttribute("list2", cdtos);
		return "/admin/memberDetails";
	}
	
	@RequestMapping("memberManagement")
	public String memberManagement(Model model) throws Exception{
		List<memberDto> mdtos = memberService.memberList();
		model.addAttribute("mdtos", mdtos);
		return "/admin/memberManagement";
	}
	
	// 회원가입 
	@RequestMapping("join")
	public String join() {
		return "join";
	}
	@RequestMapping(value = "/joinOK", method = RequestMethod.POST)
	public String joinOK(@RequestParam("id") String id, @RequestParam("pw") String pw,@RequestParam("name") String name, @RequestParam("email") String email, Model model ) throws Exception{
		String path = "";
		memberDto mdto = null;
		int idCheck = memberService.idCheck(id);
		
		if(idCheck == 0) {
			mdto = new memberDto(id,pw,name,email,null);
			
			int result = memberService.join(mdto);
			
			if(result == 1) {
				model.addAttribute("name",name);
				System.out.println("회원가입 성공");
				path = "join_sucess";
			}else {
				System.out.println("회원가입 실패");
				path = "join";
			}
			
		}else {
			System.out.println("아이디중복");
			path = "join";
		}
		
		return path;	
	
	}
	
	// 회원 수정 
	@RequestMapping(value = "/modifyOk", method = RequestMethod.POST)
	public String modifyOk(@RequestParam("id") String id, @RequestParam("password") String pw,@RequestParam("name") String name, @RequestParam("email") String email, Model model, HttpSession session) throws Exception{
		String path = "";
		System.out.println(id+pw+email+name);
		memberDto mdto = new memberDto(id,pw,name,email,null);
		int result = memberService.memberUpdate(mdto);
		
		if(result == 1) {
			System.out.println("정보수정 성공");
			session.setAttribute("dto", mdto);
			path = "myPage";
		}else {
			System.out.println("정보수정 실패");
			path = "myPage";
		}
		return path;
	}
	

	
	@RequestMapping("mInfo")
	public String mInfo() {		
		return "member_info";
	}
	
	// 로그인 
	@RequestMapping("login")
	public String login() {
		return "login";
	}
	
	@RequestMapping(value = "/loginOK", method = RequestMethod.POST)
	public String loginUser(@RequestParam("id") String id, @RequestParam("pw") String pw, Model model, HttpSession session) throws Exception{
		String path = "";
		adminDto adto = new adminDto("", "", "", "", null);
		adto.setA_id(id);
		adto.setA_pw(pw);
		
		int result = memberService.adminLogin(adto);
		
		if(result == 1) {//관리자 로그인
			adto = memberService.adminInfo(id);
			model.addAttribute("adto", adto);	
			session.setAttribute("adto", adto);
			path = "/admin/index";
		}else {//일반회원 로그인
			memberDto mdto = new memberDto("", "", "", "", null);
			mdto.setM_id(id);
			mdto.setM_pw(pw);
			
			result = memberService.loginUser(mdto);
			
			if(result == 1) {
				mdto = memberService.memberInfo(id);
				session.setAttribute("dto", mdto);
				model.addAttribute("mdto",mdto);
				path = "index_susess";
			}else {
				System.out.println("로그인 실패");
				path = "login";
			}
		}	
		return path;	
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "login";
	}
	
	// 아이디 찾기 
	@RequestMapping("findId")
	public String findId() {
		return "findId";
	}
	
	@RequestMapping(value = "/idOk", method = RequestMethod.POST)
	public String findId(@RequestParam("name") String name, @RequestParam("email") String email, Model model) throws Exception{
		String path = "";
		
		memberDto mdto = new memberDto("", "", "", "", null);
		mdto.setM_name(name);
		mdto.setM_email(email);
		
		String id = memberService.findId(mdto);
		
		
		if(id != null) {
			model.addAttribute("id",id);
			path = "result_find";
		}else {
			System.out.println("회원정보없음");
			path = "findId";
		}
		
		return path;	
	
	}
	
	// 비밀 번호 찾기 
	@RequestMapping("findPw")
	public String findPw() {
		return "findPw";
	}
	
	@RequestMapping(value = "/pwOk", method = RequestMethod.POST)
	public String findPw(@RequestParam("id") String id, @RequestParam("email") String email, Model model) throws Exception{
		String path = "";
		memberDto mdto = new memberDto("", "", "", "", null);
		mdto.setM_id(id);
		mdto.setM_email(email);
		
		String pw = memberService.findPw(mdto);
		
		
		if(pw != null) {
			model.addAttribute("pw", pw);
			path = "result_find_pw";
		}else {
			System.out.println("회원정보없음");
			path = "findPw";
		}
		
		return path;	
	
	}
	
	//관리자 페이지
	@RequestMapping("amain")
	public String amain() {
		return "/admin/index";
	}
	
	//관리자 확인
	public int checkAdmin(String id) {
		int result = -1;
		try {
			List<adminDto>idDto = memberService.adminId();
			for(int i = 0; i<idDto.size(); i++) {
				String adminId = idDto.get(i).getA_id().toString();
				System.out.println(id);
				System.out.println(adminId);
				if(id.equals(adminId)) {
					result = 1;
					break;
				}else {
					result = 0;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	//관리자 추가
	@RequestMapping("aJoin")
	public String aJoin() {
		return "admin_join";
	}
	
	@RequestMapping("aJoinOk")
	public String aJoinOk(@RequestParam("id") String id, @RequestParam("pw") String pw,@RequestParam("name") String name, @RequestParam("email") String email, Model model) {
		String path = "";
		adminDto adto = null;
		try {
			int idCheck = memberService.idCheck(id);
				
			if(idCheck == 0) {
				adto = new adminDto(id,pw,name,email,null);
					
				int result = memberService.adminJoin(adto);
					
				if(result == 1) {
					System.out.println("회원가입 성공");
					path = "/admin/admin_list";
				}else {
					System.out.println("회원가입 실패");
					path = "/admin/admin_join";
				}
					
			}else {
					System.out.println("아이디중복");
					path = "/admin/admin_join";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		adminManagement(id, model);
		return path;
	}
	
	@RequestMapping("adminDetails")
	public String adminDetails(@RequestParam("a_id") String id, Model model) throws Exception{
		List<adminDto> adtos = memberService.adminInfo2(id);
		model.addAttribute("adtos", adtos);
		return "/admin/adminDetails";
	}
	//관리자 목록
	@RequestMapping("adminManagement")
	public String adminManagement(@RequestParam("id") String id, Model model) {
		String path = "";
		
		int adminCheck = checkAdmin(id);
		
		try {
			if(adminCheck == 1) {
				List<adminDto> adtos = memberService.adminList();
				model.addAttribute("adtos", adtos);
				path = "/admin/adminManagement";
			}else {
				System.out.println("권한없음");
				path = "/admin/adminManagement";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return path;
	}
	
	//관리자 수정
	@RequestMapping("aModify")
	public String aModify(Model model) {
		try {
			List<adminDto> adtos = memberService.adminList();
			model.addAttribute("adtos", adtos);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/admin/admin_list_modify";
	}
	
	@RequestMapping(value = "/aModifyOk", method = RequestMethod.POST)
	public String aModifyOk(@RequestParam("id") String id, @RequestParam("pw") String pw, @RequestParam("name") String name, @RequestParam("email") String email, @RequestParam("a_id") String myId, Model model, HttpSession session) throws Exception{
		String path = "";
		adminDto adto = new adminDto(id,pw,name,email,null);
		
		int result = memberService.adminUpdate(adto);
		System.out.println(result);
		if(result == 1) {
			System.out.println("정보수정 성공");
			adminDto myAdto = memberService.adminInfo(myId);
			session.setAttribute("adto", myAdto);
			path = "/admin/index";
		}else {
			System.out.println("정보수정 실패");
			path = "/admin/index";
		}
		aModify(model);
		return path;
	}
	
	//관리자 삭제
	@RequestMapping(value = "/aDeleteOk", method = RequestMethod.POST)
	public String aDeleteOk(@RequestParam("id") String id, @RequestParam("myId") String myId, Model model ) throws Exception{
		String path = "";
		if(id.equals(myId)) {
			System.out.println("삭제 실패: 본인아이디");
			path = "/admin/admin_list_modify";
		}else {
			int result = memberService.adminDelete(id);
			
			if(result == 1) {
				System.out.println("삭제성공");
				path = "/admin/admin_list_modify";
				
			}else {
				System.out.println("삭제실패");
				path = "admin_list_modify";
			}
		}
		aModify(model);
		return path;
	}
	
	//회원목록
	@RequestMapping("mList")
	public String mList(@RequestParam("id") String id, Model model) {
		String path = "";
		
		int adminCheck = checkAdmin(id);
		
		try {
			if(adminCheck == 1) {
				List<memberDto> mdtos = memberService.memberList();
				model.addAttribute("mdtos", mdtos);
				path = "/admin/admin_memberList";
			}else {
				System.out.println("권한없음");
				path = "/admin/admin_main";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return path;
	}
	
	//회원 상세정보
	@RequestMapping("mDetail")
	public String mDetail(@RequestParam("id") String id, Model model) {
		memberDto mdto = memberService.memberInfo(id);
		model.addAttribute("mdto", mdto);
		return "/admin/admin_memberList_detail";
	}

	
	
}
