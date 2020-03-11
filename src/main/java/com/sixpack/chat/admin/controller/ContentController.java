package com.sixpack.chat.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sixpack.chat.admin.service.ContentService;
import com.sixpack.chat.admin.vo.ContentVO;
import com.sixpack.chat.content.utils.Pagination;
import com.sixpack.chat.content.utils.Search;

@Controller
public class ContentController {
	
	@Autowired
	ContentService contentservice;
	
	//컨텐츠 등록
	@ResponseBody
	@RequestMapping(value="/insertcontent.do", method=RequestMethod.POST)
	public void insertcontent(@ModelAttribute ContentVO contentvo) throws Exception{
		System.out.println("insertcontent()");
		System.out.println(contentvo.getProdName());
		System.out.println(contentvo.getProdCategory());
		System.out.println(contentvo.getProdIntroduce());
		System.out.println(contentvo.getUseStatus());
		contentservice.insertcontent(contentvo);
	}
	
	
	
	//컨텐츠 수정
	@ResponseBody
	@RequestMapping(value="/updatecontent.do", method=RequestMethod.POST)
	public void updatecontent(@ModelAttribute ContentVO contentvo) throws Exception{
		System.out.println("updatecontent()");
		
		System.out.println("ProductSeq : "+contentvo.getProductSeq());
		System.out.println("ProdName : "+contentvo.getProdName());
		
		ModelAndView mv = new ModelAndView();
		
		int seq = contentvo.getProductSeq();
		
		contentservice.updatecontent(contentvo);
	

	}
	
	//컨텐츠 삭제
	@ResponseBody
	@RequestMapping(value="/deletecontent.do", method=RequestMethod.POST)
	public void deletecontent(@ModelAttribute ContentVO contentvo) throws Exception{
		contentservice.deletecontent(contentvo);
	}
	
	//컨텐츠 목록 조회
	@RequestMapping(value="/contents.do")
	public ModelAndView contents(@RequestParam(required = false, defaultValue = "1") int page 
			, @RequestParam(required = false, defaultValue = "1") int range
			, @RequestParam(required = false, defaultValue = "Everything") String searchType
			, @RequestParam(required = false, defaultValue = "") String keyword
			) throws Exception{
		
		System.out.println("contents()");
		
		ModelAndView mv = new ModelAndView();
		//Search 객체 생성
		Search search = new Search();
		search.setSearchType(searchType);
		search.setKeyword(keyword);
		
		int total = contentservice.selectContentListCount(search);
		
		//Pagination 객체생성
		Pagination pagination = new Pagination();
		search.pageInfo(page, range, total);
		
		mv.setViewName("main/contents.tiles");
		mv.addObject("pagination", search);
		mv.addObject("contentList", contentservice.selectcontent(search));
		mv.addObject("total",total);
		
		System.out.println(contentservice.selectcontent(search));
		
		return mv;
	}
	
	//컨텐츠 등록 페이지 이동
	@RequestMapping(value="/writecontent.do")
	public String writecontent() throws Exception{
		return "main/contentsWrite.tiles";
	}
	
	//컨텐츠 자세히보기
		@RequestMapping(value="/contentsDetail.do")
		public ModelAndView contentsDetail(@RequestParam("seq")int seq) throws Exception{
			System.out.println("contentsDetail()");
			ModelAndView mv = new ModelAndView();
			
			mv.setViewName("main/contentsDetail.tiles");
			mv.addObject("list", contentservice.viewDetail(seq));
			
			return mv;
		}
}
