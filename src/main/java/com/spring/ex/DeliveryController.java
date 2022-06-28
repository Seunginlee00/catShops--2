package com.spring.ex;

import com.spring.ex.dto.cartDto;
import com.spring.ex.dto.deliveryDto;
import com.spring.ex.dto.productDto;
import com.spring.ex.dto.subdeliveryDto;
import com.spring.ex.service.CartService;
import com.spring.ex.service.DeliveryService;
import com.spring.ex.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.time.LocalDate;
import java.util.List;
import java.util.Random;

@Controller
public class DeliveryController {
	@Inject
	DeliveryService deliveryService;
	
	@Inject //서비스당 하나!!
	CartService cartService;
	
	@Inject
	ProductService productService;
	
	//결제창
	@RequestMapping("payment")
	public String payment () {
		return "payment";
	}
	
	//결제
	@RequestMapping(value = "/paymentOk", method = RequestMethod.POST)
	public String paymentOk(@RequestParam("recipient") String recipient, @RequestParam("postcode") String postcode, @RequestParam("destination") String destination, @RequestParam("message") String message, @RequestParam("id") String id, Model model) {
		System.out.println("paymentOk 실행");
		String path = "";
		try {
			List<cartDto> crdtos = cartService.cartList(id);
			//배송번호
			LocalDate date = LocalDate.now();
			String dNum = String.valueOf(date.getYear()) + String.valueOf(date.getDayOfMonth());
			Random rnd = new Random();
			int rNum = rnd.nextInt(99) + 1;
			System.out.println(rNum);
			dNum = dNum + String.valueOf(rNum);
			System.out.println("dNum: " + dNum);
			int dNumber = Integer.parseInt(dNum);	
			
			//db저장
			for(int i=0; i<crdtos.size(); i++) {
				deliveryDto ddto = new deliveryDto(dNumber, id, crdtos.get(i).getP_number(), crdtos.get(i).getP_name(), crdtos.get(i).getCr_amount(), crdtos.get(i).getP_sum_price(), recipient, postcode, destination, message, "상품준비중", null);
				int result = deliveryService.deliveryJoin(ddto);
				if(result == 1) {
					System.out.println("배송정보 등록완료");
					
					/*
					//재고감소 매출증가 갑자기 터짐~~~~~
					productDto pdto = productService.productInfo(crdtos.get(i).getP_number());
					int stock = pdto.getP_stock() - crdtos.get(i).getCr_amount();
					//int total = pdto.getP_total() + crdtos.get(i).getP_sum_price();
					pdto.setP_stock(stock);
					//pdto.setP_total(total);
					productService.productUpdate(pdto);
					*/
					
				}else {
					System.out.println("배송정보 등록실패");
					break;
				}
			}
			cartService.cartDeleteAll(id);
			path = "afterPayment";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return path;
	}
	
	//구독 결제
	@RequestMapping("subpayment")
	public String subpayment(@RequestParam("id") String id, @RequestParam("pNumber") int pNumber, @RequestParam("name") String name, @RequestParam("amount") int amount, @RequestParam("price") int price, @RequestParam("image") String image, HttpSession session) {
		try {
			System.out.println("id: " + id);
			System.out.println("pNumber: " + pNumber);
			System.out.println("amount: " + amount);
			System.out.println("image: " + image);
			
			int sum = price * amount;
			
			cartDto crdto = new cartDto(0, id, pNumber, name, amount, price, sum, image);			
			
			session.setAttribute("subdto", crdto);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "payment_sub";
	}
	
	@RequestMapping(value = "/subPaymentOk", method = RequestMethod.POST)
	public String subPaymentOk(@RequestParam("pNumber") int pNumber, @RequestParam("name") String name, @RequestParam("amount") int amount, @RequestParam("price") int price, @RequestParam("image") String image, @RequestParam("recipient") String recipient, @RequestParam("postcode") String postcode, @RequestParam("destination") String destination, @RequestParam("month") int month, @RequestParam("message") String message, @RequestParam("id") String id, Model model) {
		System.out.println("paymentOk 실행");
		String path = "";
		try {
			//배송번호
			LocalDate date = LocalDate.now();
			String dNum = String.valueOf(date.getDayOfMonth()) + String.valueOf(date.getYear());
			Random rnd = new Random();
			int rNum = rnd.nextInt(99) + 1;
			System.out.println(rNum);
			dNum = dNum + String.valueOf(rNum);
			System.out.println("dNum: " + dNum);
			int dNumber = Integer.parseInt(dNum);	
				
			//db저장
			subdeliveryDto sddto = new subdeliveryDto(dNumber, id, pNumber, name, image, amount, price, recipient, postcode, destination, message, "상품준비중", month, null, null);
			int result = deliveryService.subdeliveryJoin(sddto);
			if(result == 1) {
				System.out.println("배송정보 등록완료");
						
				//재고감소 매출증가
				productDto pdto = productService.productInfo(sddto.getP_number());
				int stock = pdto.getP_stock() - sddto.getSd_amount();
				//int total = pdto.getP_total() + sddto.getC_sum_price();
				pdto.setP_stock(stock);
				//pdto.setP_total(total);
				productService.productUpdate(pdto);

						
			}else {
				System.out.println("배송정보 등록실패");
			}
		
			path = "afterPayment";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return path;
	}
	
	//결제완료
	@RequestMapping("afterPayment")
	public String afterPayment() {
		return "afterPayment";
	}
	
	//구독 주문목록
	@RequestMapping("subscribeHistory")
	public String subscribeHistory(@RequestParam("id") String id, Model model ) {
		System.out.println("subscribeHistory 실행");
		try {
			List<subdeliveryDto> sddtos = deliveryService.subdeliveryList(id);
			
			model.addAttribute("sddtos", sddtos);

			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "subscribeHistory";
	}
	
	//구독 삭제
	@RequestMapping(value = "/subDelete", method = RequestMethod.POST)
	public String subDelete(@RequestParam("number") int number, HttpServletRequest request) {
		try {
			int result = deliveryService.subdeliveryDelete(number);
			
			if(result == 1) {
				System.out.println("삭제 성공");
			}else {
				System.out.println("삭제 실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//이전페이지로
		if (request.getHeader("Referer") != null) {
		    return "redirect:" + request.getHeader("Referer");
		  } else {
		    return "redirect:/main";
		 }	
	}
	
	//관리자
	
	//주문 목록
	@RequestMapping("dList")
	public String dList(Model model) {
		try {			
			List<deliveryDto> ddtos = deliveryService.deliveryListAll();
			model.addAttribute("ddtos", ddtos);
			for(int i=0; i<ddtos.size(); i++) {
				System.out.println(ddtos.get(i).getP_name());
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "/admin/shippingManagement";
	}
	
	@RequestMapping("dDetail")
	public String dDetail(@RequestParam("number") int number, Model model) {
		try {			
			List<deliveryDto> ddtos = deliveryService.deliveryList(number);
			model.addAttribute("ddtos", ddtos);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "/admin/purchaseList";
	}
	
	// 관리자 구독 페이지
	@RequestMapping("subManagement")
	public String subManagement(Model model) {
		try {
			List<subdeliveryDto> sddtos = deliveryService.subdeliveryListAll();
			model.addAttribute("sddtos", sddtos);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/admin/subscriptionManagement";
	}
	
	@RequestMapping("subDetail")
	public String subDetails(@RequestParam("number") int number, Model model) {
		try {
			subdeliveryDto sddto = deliveryService.subdeliveryListD(number);
			model.addAttribute("sddto", sddto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/admin/subDetails";
	}
	/*
	//배송상태 수정
	@RequestMapping(value = "/dStatusModify", method = RequestMethod.POST)
	public String dStatusModify(@RequestParam("number") int number, @RequestParam("deliveryStatus") String status, Model model, HttpServletRequest request) {
		try {
			System.out.println(status);
			System.out.println(number);
			deliveryDto ddto = new deliveryDto(number, null, 0, null, 0, 0, null, null, null, null, status, null);
			int result = deliveryService.deliveryStatusUpdate(ddto);
			if(result == 1) {
				System.out.println("배송상태 변경 완료");
			}else {
				System.out.println("배송상태 변경 실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		//이전페이지로
		if (request.getHeader("Referer") != null) {
		    return "redirect:" + request.getHeader("Referer");
		  } else {
		    return "redirect:/main";
		 }	
	}
	*/
}