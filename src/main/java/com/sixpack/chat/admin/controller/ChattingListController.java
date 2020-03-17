package com.sixpack.chat.admin.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sixpack.chat.admin.service.ChattingListService;
import com.sixpack.chat.content.utils.Pagination;
import com.sixpack.chat.content.utils.Search;

@Controller
public class ChattingListController {
	
	@Autowired
	ChattingListService chattingservice;

	//채팅 내역 목록 조회
	@RequestMapping(value="/chattingList.do")
	public ModelAndView chattingList(@RequestParam(required = false, defaultValue = "1") int page 
			, @RequestParam(required = false, defaultValue = "1") int range
			, @RequestParam(required = false, defaultValue = "Everything") String searchType
			, @RequestParam(required = false, defaultValue = "") String keyword
			) throws Exception{
		
		System.out.println("chattingList()");
		
		ModelAndView mv = new ModelAndView();
		//Search 객체 생성
		Search search = new Search();
		search.setSearchType(searchType);
		search.setKeyword(keyword);
		
		int total = chattingservice.selectchattingListCount(search);
		
		//Pagination 객체생성
		Pagination pagination = new Pagination();
		search.pageInfo(page, range, total);
		
		mv.setViewName("main/chattingList.tiles");
		mv.addObject("pagination", search);
		mv.addObject("chattingservice", chattingservice.selectchatting(search));
		mv.addObject("total",total);
		
		System.out.println(chattingservice.selectchatting(search));
		
		return mv;
	}
	
	/*
	 * @RequestMapping(value="/chattingListDetail.do")
	public String chattingListDetail(){
		return "main/chattingListDetail.tiles";
	}*/
	
	
	//채팅 내역 자세히 보기
	@RequestMapping(value="/chattingListDetail.do")
	public ModelAndView chattingListDetail(@RequestParam("seq")int seq) throws Exception{
		System.out.println("chattingListDetail()");
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("main/chattingListDetail.tiles");
		mv.addObject("list", chattingservice.viewDetail(seq));		
		return mv;
	}
}
