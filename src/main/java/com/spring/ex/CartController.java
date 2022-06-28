package com.spring.ex;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

//import org.omg.CORBA.OMGVMCID;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.AlternativeJdkIdGenerator;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.spring.ex.dto.adminDto;
import com.spring.ex.dto.cartDto;
import com.spring.ex.dto.memberDto;
import com.spring.ex.dto.productDto;
import com.spring.ex.service.CartService;
import com.spring.ex.service.MemberSerivce;
import com.spring.ex.service.ProductService;

//import lombok.EqualsAndHashCode;

@Controller
public class CartController {
	@Inject
	CartService cartService;
	
	@Inject
	MemberSerivce memberService;
	
	//장바구니
	@RequestMapping("cart")
	public String cart(@RequestParam("id") String id, Model model) {		
		String path = "";
		int total = 0;
		int sum = 0;
		System.out.println(id);
		int chkId = 0;
		try {
			chkId = memberService.idCheck(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(chkId == 1) {
			try {
				List<cartDto> crdtos = cartService.cartList(id);
				for(int i = 0; i < crdtos.size(); i++) {
					total += crdtos.get(i).getP_sum_price();
				}
				
				for(int i = 0; i < crdtos.size(); i++) {
					sum += crdtos.get(i).getCr_amount();
				}
				
				model.addAttribute("total", total);
				model.addAttribute("sum", sum);
				model.addAttribute("crdtos", crdtos);
				path = "cart";
			} catch (Exception e) {
				e.printStackTrace();
			}		
		}else {
			System.out.println("");
			System.out.println("로그인이 필요한 기능입니다.");
			path = "login";
		}
		return path;
	}
	
	//장바구니에 상품 추가
	@RequestMapping(value = "/inputCart", method = RequestMethod.POST)
	public String joinOK(@RequestParam("id") String id, @RequestParam("pNumber") int pNumber, @RequestParam("name") String name, @RequestParam("amount") int amount, @RequestParam("price") int price, @RequestParam("image") String image, Model model, HttpServletRequest request ) throws Exception{
		cartDto crdto = null;
		if(id.equals("/")) { //알럿창으로 바꿔야하는데 할게 너무 많아.....
			System.out.println("로그인이 필요한 기능입니다.");
			return "login";		
		}else {
			System.out.println("id: " + id);
			System.out.println("pNumber: " + pNumber);
			System.out.println("amount: " + amount);
			System.out.println("image: " + image);
			
			int sum = price * amount;
			
			crdto = new cartDto(0, id, pNumber, name, amount, price, sum, image);
			
			
			int result = cartService.cartJoin(crdto);
				
			if(result == 1) {
				model.addAttribute("crdto", crdto);
				System.out.println("장바구니 등록완료");
			}else {
				System.out.println("장바구니 등록실패");
			}
				
			//이전페이지로
			if (request.getHeader("Referer") != null) {
			    return "redirect:" + request.getHeader("Referer");
			  } else {
			    return "redirect:/main";
			 }	
		}
	}
	
	//장바구니 상품 삭제
		@RequestMapping(value = "/crDeleteOk")
		public String crDeleteOk(@RequestParam("id") String id, @RequestParam("number") int number, HttpServletRequest request, Model model) throws Exception{
			System.out.println("개별 삭제 실행");
			int result = cartService.cartDelete(number);
					
			if(result == 1) {
				System.out.println("삭제성공");
					
						
			}else {
				System.out.println("삭제실패");
			}
			cart(id, model);
			
			return "cart";
		}
		
	//장바구니 비우기
	@RequestMapping(value = "/crDeleteAllOk")
	public String crDeleteAllOk(@RequestParam("id") String id, HttpServletRequest request) throws Exception{
			
		int result = cartService.cartDeleteAll(id);
				
			if(result == 1) {
				System.out.println("삭제성공");
				
					
			}else {
				System.out.println("삭제실패");
			}
		return "cart";
	}
	
	
}