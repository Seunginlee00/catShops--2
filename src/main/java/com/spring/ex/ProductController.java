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
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.spring.ex.dto.adminDto;
import com.spring.ex.dto.memberDto;
import com.spring.ex.dto.productDto;
import com.spring.ex.service.MemberSerivce;
import com.spring.ex.service.ProductService;

//import lombok.EqualsAndHashCode;
@Controller
public class ProductController {
	@Inject
	ProductService productService;
	
	@Inject
	MemberSerivce memberService;
	
	//컴에 맞게 저장경로 수정!!
	String uploadFolder = "C:\\Users\\401ST000\\Catshop_Project\\catShops--2 4\\src\\main\\webapp\\resources\\images\\product"; //학교컴
	//String uploadFolder = "C:\\Users\\User\\eclipse-workspace\\catShops--2 4\\src\\main\\webapp\\resources\\images\\product";
	//String uploadFolder = "C:\\Users\\301ST000\\eclipse-workspace\\catShops--2\\src\\main\\webapp\\resources\\images\\product"; // 학교3층컴
	
	String relativePath = "resources/images/product";
	
	//관리자
	
	//상품추가
	@RequestMapping("pJoin")
	public String pJoin() {
		return "/admin/product_join";
	}
	
	@RequestMapping(value = "productJoinOk", method = RequestMethod.POST)
	public String productJoinOk(@RequestParam("name") String name, @RequestParam("kind") String kind, @RequestParam("price") int price, @RequestParam("stock") int stock, @RequestParam("subscription") String subscription, @RequestParam("content") String content, @RequestParam("image") MultipartFile image, @RequestParam("id") String id, Model model, HttpServletRequest request) {		
		String kindPath = "";
		String rKindPath = "";
		String imgPath = "";
		String path = "";
		
		if(kind.equals("간식")) {
			kindPath = "\\snack\\";
			rKindPath = "/snack/";
		}else if(kind.equals("사료")) {
			kindPath = "\\feed\\";
			rKindPath = "/feed/";
		}else if(kind.equals("장난감")) {
			kindPath = "\\toy\\";
			rKindPath = "/toy/";
		}else if(kind.equals("모래")) {
			kindPath = "\\sand\\";
			rKindPath = "/sand/";
		}else if(kind.equals("의류")) {
			kindPath = "\\wear\\";
			rKindPath = "/wear/";
		}else {
			kindPath = "\\can\\";
			rKindPath = "/can/";
		}		
		String uploadPath = uploadFolder + kindPath;
		String rPath = relativePath + rKindPath;
				
		
		System.out.println("uploadPath: " + uploadPath);
		System.out.println("relativePath: " + rPath);
		
		System.out.println("originalName: " + image.getOriginalFilename());
		System.out.println("size: " + image.getSize());
		
		try{
			//이미지 업로드
			String fileName = image.getOriginalFilename();
			System.out.println("fileName: " +fileName);
			fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
			System.out.println("fileName: " +fileName);
			File savefile = new File(uploadPath, fileName);
			System.out.println("savefile: " +savefile);
			image.transferTo(savefile);
			
			imgPath = uploadPath + fileName;
			rPath = rPath + fileName;
			System.out.println(imgPath);
			System.out.println(rPath);
			
			//db에 저장
			productDto pdto = new productDto(0, name, kind, price, 0, stock, subscription, content, imgPath, rPath, null);
			int result = productService.productJoin(pdto);
			if(result == 1) {
				System.out.println("등록 완료");
				pList(id, model);
				path = "/admin/productManagement";
			}else {
				System.out.println("등록 실패");
				path = "/admin/index";
			}
        }catch (Exception e){
            e.printStackTrace();
        }
		//이전페이지로
				if (request.getHeader("Referer") != null) {
				    return "redirect:" + request.getHeader("Referer");
				  } else {
				    return "redirect:/main";
				 }	
    }
	
	//상품 목록
	@RequestMapping("pList")
	public String pList(@RequestParam("id") String id, Model model) {
		String path = ""; 
		
		try {			
			List<productDto> pdtos = productService.productList();
			model.addAttribute("pdtos", pdtos);
			path = "/admin/productManagement";
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return path;
	}
	
	@RequestMapping("pDetail")
	public String pDetail(@RequestParam("number") int number, Model model) {
		try {
			productDto pdto = productService.productInfo(number);
			model.addAttribute("pdto", pdto);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/admin/productManagDetails";
	}
	
	//상품 수정
	@RequestMapping("pModify")
	public String pModify(@RequestParam("number") int number, Model model) {
		try {
			productDto pdto = productService.productInfo(number);
			model.addAttribute("pdto", pdto);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/admin/product_adminDetail_modity";
	}
	
	@RequestMapping(value = "/pModifyOk", method = RequestMethod.POST)
	public String aModifyOk(@RequestParam("image") String image, @RequestParam("number") int number, @RequestParam("name") String name, @RequestParam("kind") String kind, @RequestParam("price") int price, @RequestParam("stock") int stock, @RequestParam("subscription") String subscription, @RequestParam("content") String content, Model model) throws Exception{
		String path = "";
		try {
			
			productDto pdto = new productDto(number, name, kind, price, 0, stock, subscription, content, image, null, null);
			int result = productService.productUpdate(pdto);
			
			if(result == 1) {
				System.out.println("정보수정 성공");
				pDetail(number, model);
				path = "/admin/product_adminDetail";
			}else {
				System.out.println("정보수정 실패");
				pModify(number, model);
				path = "/admin/product_adminDetail_modity";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return path;
	}
	
	//상품 삭제
	@RequestMapping(value = "/pDeleteOk", method = RequestMethod.POST)
	public String aDeleteOk(@RequestParam("number") int number, @RequestParam("id") String id, Model model ) throws Exception{
		String path = "";
		
		int result = productService.productDelete(number);
			
			if(result == 1) {
				System.out.println("삭제성공");
				pList(id, model);
				path = "/admin/product_list";
				
			}else {
				System.out.println("삭제실패");
				pDetail(number, model);
				path = "/admin/product_adminDetail";
			}
		return path;
	}
	
	//상품이미지 수정
	@RequestMapping("pImgModify")
	public String pImgModify(@RequestParam("number") int number, Model model) {
		try {
			productDto pdto = productService.productInfo(number);
			model.addAttribute("pdto", pdto);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/admin/product_imageModify";
	}
	
	@RequestMapping(value = "/pImgModifyOk", method = RequestMethod.POST)
	public String pImgModifyOk(@RequestParam("number") int number, @RequestParam("image") MultipartFile image, @RequestParam("kind") String kind, Model model) {				
		String path = "";	
		String rKindPath = "";

		String fileName = image.getOriginalFilename();
		System.out.println("fileName: " + fileName);
		System.out.println("imagePath: " + image);
		try {
				String kindPath = "";
								
				if(kind.equals("간식")) {
					kindPath = "\\snack\\";
					rKindPath = "/snack/";
				}else if(kind.equals("사료")) {
					kindPath = "\\feed\\";
					rKindPath = "/feed/";
				}else if(kind.equals("장난감")) {
					kindPath = "\\toy\\";
					rKindPath = "/toy/";
				}else if(kind.equals("모래")) {
					kindPath = "\\sand\\";
					rKindPath = "/sand/";
				}else if(kind.equals("의류")) {
					kindPath = "\\wear\\";
					rKindPath = "/wear/";
				}else {
					kindPath = "\\can\\";
					rKindPath = "/can/";
				}	
				String uploadPath = uploadFolder + kindPath;
								
				fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
				File savefile = new File(uploadPath, fileName);
				image.transferTo(savefile);
								
				String imgPath = uploadPath + fileName;
				String rPath = relativePath + rKindPath + fileName;
				System.out.println("imgPath: " + imgPath);
				System.out.println("rPath: " + rPath);
				
				try {
					productDto pdto = new productDto(number, null, kind, 0, 0, 0, null, null, imgPath, rPath, null);
					int result = productService.productImgUpdate(pdto);
					
					if(result == 1) {
						System.out.println("이미지수정 성공");
						pModify(number, model);
						path = "/admin/product_adminDetail_modity";
					}else {
						System.out.println("이미지수정 실패");
						pImgModify(number, model);
						path = "/admin/product_imageModify";
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
				}catch (IOException e) {
				e.printStackTrace();
			}
		return path;
	}
	
	//사용자

	//일반 상품 목록
	@RequestMapping("pPage")
	public String pPage(Model model) {
		try {
			List<productDto> pdtos = productService.commonProductList();
			model.addAttribute("pdtos", pdtos);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "shop";
	}
	
	//구독 상품 목록
		@RequestMapping("pSubPage")
		public String pSubPage(Model model) {
			try {
				List<productDto> pdtos = productService.subProductList();
				model.addAttribute("pdtos", pdtos);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "subShop";
		}
		
	//상품 상세
	@RequestMapping("pUserDetail")
	public String pUserDetail(@RequestParam("number") int number, Model model) {
		try {
			productDto pdto = productService.productInfo(number);
			model.addAttribute("pdto", pdto);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "product_userDetails";
	}
	
	//상품 상세
	@RequestMapping("subpUserDetail")
	public String subpUserDetail(@RequestParam("number") int number, Model model) {
		try {
			productDto pdto = productService.productInfo(number);
			model.addAttribute("pdto", pdto);
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "product_userDetails_sub";
		}
		
}