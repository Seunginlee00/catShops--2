package com.spring.ex;

import java.util.List;

import javax.inject.Inject;

import com.spring.ex.dto.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.ex.model.Criteria;
import com.spring.ex.service.BoardService;

@Controller
public class boardController {
	
	@Inject
	BoardService boardservice;

	// 리스트 
	@RequestMapping("list")
	public String boardlist(Model model, Criteria cri) throws Exception {
		//List<boardDto> bdto = boardservice.boardList();
		//model.addAttribute("bdto",bdto.listIterator());
		List<boardDto> bdto = boardservice.getListPaging(cri);
		model.addAttribute("list",bdto);
		int total = boardservice.getTotal();
		boardPageDto bpdto = new boardPageDto(cri, total);
		model.addAttribute("pageMaker",bpdto);
		return "list";
	}
	
	//게시판 조회
	@GetMapping("get")
	public void boardGetPageGET(int bnumber, Model model, Criteria cri) {
		model.addAttribute("pageInfo",boardservice.getListPaging(cri));
	}
	
	@RequestMapping("write")
	public String write() {
		return "write";
	}
	//글 쓰기 
	@RequestMapping(value= "writeOK",method = RequestMethod.GET)
	public String writeOK(@RequestParam("b_subject") String subject, @RequestParam("b_name") String name, @RequestParam("b_content") String content, Model model, Criteria cri) throws Exception {
		String path = "";
		int result = 0;
		List<boardDto> bdtos = boardservice.getListPaging(cri);
		
		
		boardDto bdto = new boardDto(0,subject,content,name,null,0);

		try {
			result = boardservice.write(bdto); 
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(result == 1) {
			
		 path = "list";
		 model.addAttribute("list",bdtos);
		 
		}else {
			path = "write";
		}
		return path;
	}
	//안불러와지기긴 함 .... 
	@RequestMapping("contentView")
	public String contentView(@RequestParam("b_number") String number, Model model) {
		int num = Integer.parseInt(number);
		
		try {
			
			List<boardDto> bdto = boardservice.boardNumList(num);
			model.addAttribute("bdto",bdto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "contentView";
	}
	
	// 글번호 불러오기 안댐... 
	@RequestMapping(value= "modify",method = RequestMethod.GET)
	public String modify(@RequestParam("number") String number , @RequestParam("b_subject") String subject, @RequestParam("b_name") String name, @RequestParam("b_content") String content, Model model, Criteria cri) {
	    String path= "";
		int num = Integer.parseInt(number);
		boardDto bdto = new boardDto(num,subject,name,content,null,0);
	
		int reuslt = 0;
		try {
			reuslt = boardservice.modify(bdto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if (reuslt == 1) {
			List<boardDto> bdtos = boardservice.getListPaging(cri);
			model.addAttribute("list",bdtos);
			path= "list";
		}else {
			path = "contentView";
		}
		return path;
		
	}
	
	@RequestMapping(value="delete")
	public String delete(@RequestParam("number") String number, Model model) {
		int num = Integer.parseInt(number);
		String path = "";
		int  result = 0;
		try {
			result = boardservice.delete(num);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(result == 1) {
			List<boardDto> bdtos = boardservice.boardList();
			model.addAttribute("list",bdtos);
			path= "list";
		}else {
			path = "list";
		}
		return path;
	}
	
	
	@RequestMapping("consultationHistory")
	public String consultationHistory(Model model,Criteria cri) throws Exception {
		List<offlineDto> bdto = boardservice.getListPaging2(cri);
		model.addAttribute("list",bdto);
		int total = boardservice.getTotal();
		boardPageDto bpdto = new boardPageDto(cri, total);
		model.addAttribute("pageMaker",bpdto);
		return "/admin/consultationHistory";
	}
	
	
	@RequestMapping("offlinelist")
	public String offlinelist(Model model, Criteria cri) throws Exception {
		List<offlineDto> bdto = boardservice.getListPaging2(cri);
		model.addAttribute("list",bdto);
		int total = boardservice.getTotal();
		boardPageDto bpdto = new boardPageDto(cri, total);
		model.addAttribute("pageMaker",bpdto);
		return "/admin/offline";
	}
	
	
	
	
	
	@RequestMapping("ofwrite")
	public String ofwrite() {
		return "/admin/write";
	}
	//글 쓰기 
	@RequestMapping(value= "ofwriteOK",method = RequestMethod.GET)
	public String ofwriteOK(@RequestParam("m_name") String name, @RequestParam("o_phone") String phone,@RequestParam("o_time") String time,@RequestParam("o_content") String content, Model model, Criteria cri) throws Exception {
		String path = "";
		int result = 0;
		List<offlineDto> bdto = boardservice.getListPaging2(cri);
		
		
		offlineDto odto = new offlineDto(name,0,null,time,phone,content);

		try {
			result = boardservice.write2(odto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(result == 1) {
			
		 path = "/admin/offline";
		 model.addAttribute("list",bdto);
		 
		}else {
			path = "/admin/ofwrite";
		}
		return path;
	}
	
	@RequestMapping(value= "ofmodify",method = RequestMethod.GET)
	public String ofmodify(@RequestParam("number") String number , @RequestParam("m_name") String name, @RequestParam("o_phone") String phone,@RequestParam("o_time") String time,@RequestParam("o_content") String content, Model model, Criteria cri) {
	    String path= "";
		int num = Integer.parseInt(number);
		offlineDto odto = new offlineDto(name,num,null,time,phone,content);
	
		int reuslt = 0;
		try {
			reuslt = boardservice.modify2(odto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if (reuslt == 1) {
			List<offlineDto> odtos = boardservice.getListPaging2(cri);
			model.addAttribute("list",odtos);
			path= "/admin/offline";
		}else {
			path = "/admin/contentView";
		}
		return path;
		
	}
	
	@RequestMapping(value="ofdelete")
	public String ofdelete(@RequestParam("number") String number, Model model, Criteria cri) throws Exception {
		int num = Integer.parseInt(number);
		String path = "";
		int  result = 0;
		try {
			result = boardservice.delete2(num);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(result == 1) {
			List<offlineDto> bdtos = boardservice.getListPaging2(cri);
			model.addAttribute("list",bdtos);
			int total = boardservice.getTotal();
			boardPageDto bpdto = new boardPageDto(cri, total);
			model.addAttribute("pageMaker",bpdto);
			path= "/admin/offline";
		}else {
			
			path = "/admin/offline";
		}
		return path;
	}
	
	
	//안불러와지기긴 함 .... 
	@RequestMapping("consultationDetails")
	public String consultationDetails(@RequestParam("o_number") String number, Model model) {
		int num = Integer.parseInt(number);
		
		try {
			
			List<offlineDto> odto = boardservice.boardNumList2(num);
			model.addAttribute("list",odto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "/admin/consultationDetails";
	}
	

	
	@RequestMapping("help")
	public String slist(Model model, Criteria cri) throws Exception {
		
		List<supportDto> sdto = boardservice.getListPaging3(cri);
		model.addAttribute("list",sdto);
		return "help";
	}
	
	
	
	
	
	@RequestMapping("swrite")
	public String swrite() {
		return "help";
	}
	//글 쓰기 
	@RequestMapping(value= "swriteOK",method = RequestMethod.GET)
	public String swriteOK(@RequestParam("s_type") String type,@RequestParam("s_content") String content, Model model, Criteria cri) throws Exception {
		String path = "";
		int result = 0;
		List<supportDto> sdto = boardservice.getListPaging3(cri);
		
		
		supportDto sdtos = new supportDto(0, type, content, null, null, null);

		try {
			result = boardservice.write3(sdtos);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(result == 1) {
			
		 path = "help";
		 model.addAttribute("list",sdto);
		 
		}else {
			path = "help";
		}
		return path;
	}
	
	// 글번호 불러오기 안댐... 
	@RequestMapping(value= "smodify",method = RequestMethod.GET)
	public String smodify(@RequestParam("s_number") String number , @RequestParam("s_type") String type, @RequestParam("s_content") String content, Model model, Criteria cri) {
	    String path= "";
		int num = Integer.parseInt(number);
		supportDto sdto = new supportDto(num, type, content, null, null,null);
	
		int reuslt = 0;
		try {
			reuslt = boardservice.modify3(sdto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if (reuslt == 1) {
			List<supportDto> sdtos = boardservice.getListPaging3(cri);
			model.addAttribute("list",sdtos);
			path= "help";
		}else {
			path = "contentView3";
		}
		return path;
		
	}
	
	@RequestMapping(value="sdelete")
	public String sdelete(@RequestParam("s_number") String number, Model model, Criteria cri) throws Exception {
		int num = Integer.parseInt(number);
		String path = "";
		int  result = 0;
		try {
			result = boardservice.delete3(num);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(result == 1) {
			List<supportDto> sdtos = boardservice.getListPaging3(cri);
			model.addAttribute("list",sdtos);
			
			path= "help";
		}else {
			
			path = "help";
		}
		return path;
	}
	
	
	@RequestMapping("contentView3")
	public String contentView3(@RequestParam("s_number") String number, Model model) {
		int num = Integer.parseInt(number);
		
		try {
			
			List<supportDto> sdto = boardservice.boardNumList3(num);
			model.addAttribute("list",sdto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "contentView3";
	}
	
	@RequestMapping(value= "answerOK",method = RequestMethod.GET)
	public String answerOK(@RequestParam("s_type") String type,@RequestParam("s_content") String content, Model model, Criteria cri) throws Exception {
		String path = "";
		int result = 0;
		List<supportDto> sdto = boardservice.getListPaging3(cri);
		
		
		supportDto sdtos = new supportDto(0, type, content, null, null, null);

		try {
			result = boardservice.write3(sdtos);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(result == 1) {
			
		 path = "help";
		 model.addAttribute("list",sdto);
		 
		}else {
			path = "help";
		}
		return path;
	}
	
	@RequestMapping("oneAndoneAnsewer")
	public String oneAndoneAnsewer( Model model, Criteria cri) {
	
			List<supportDto> sdto = boardservice.getListPaging3(cri);
			model.addAttribute("sdto",sdto);
		
		return "/admin/oneAndoneAnsewer";
	}
	
	@RequestMapping("answerOk")
	public String answerOK (@RequestParam("number") int number, @RequestParam("contents") String content, Model model) throws Exception {
		
		System.out.println(content);
		supportDto sdto = new supportDto(number, null, null, null, "답변완료", content);
		int result = 0;
		
		result = boardservice.answer(sdto);
		
		if(result == 1) {
			return "/admin/index";
		}else {
			return "/admin/index";	
		}
		
		
	}
	
	@RequestMapping("contentView4")
	public String contentView4(@RequestParam("r_number") String number, Model model) throws Exception {
		int num = Integer.parseInt(number);
		System.out.println(num);
		List<reviewDto> dto = boardservice.list44(num);
		System.out.println(dto);
		model.addAttribute("rdto",dto);
		return "contentView4";
	}


	@RequestMapping("rwriteOk")
	public String rwriteOk(@RequestParam("content") String content,@RequestParam("m_id") String id, @RequestParam("subject") String subject,@RequestParam("open") String open, Model model) throws Exception{

		reviewDto rdto = new reviewDto(0,id,subject,content,null,open,null);
		int reuslt = boardservice.write4(rdto);

		if(reuslt == 1) {
			return "/can1";
		}else {
			return "/can1";
		}
	}

	@RequestMapping("rmodifyOK")
	public String rmodifyOK(@RequestParam("content") String content,@RequestParam("m_id") String id, @RequestParam("subject") String subject,@RequestParam("open") String open,@RequestParam("r_number") String number, Model model) throws Exception{
		int num = Integer.parseInt(number);
		reviewDto rdto = new reviewDto(num,id,subject,content,null,open,null);
		int reuslt = boardservice.modfiy4(rdto);

		if(reuslt == 1) {
			return "/can1";
		}else {
			return "/can1";
		}
	}

	@RequestMapping("rdeleteOK")
	public String rdeleteOK(@RequestParam("r_number") String number, Model model) throws Exception{
		int num = Integer.parseInt(number);
		System.out.println(num);
		int reuslt = boardservice.delete(num);

		if(reuslt == 1) {
			return "/can1";
		}else {
			System.out.println("왜일까...");
			return "/can1";
		}
	}

}
