package com.main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@RequestMapping(value="/main.do")
	public String main(){
		return "main/main";
	}
	
	@RequestMapping(value="/empList.do")
	public String empList(){
		return "main/empList.tiles";
	}
	
	@RequestMapping(value="/empListDetail.do")
	public String empListDetail(){
		return "main/empListDetail.tiles";
	}
	
	
	
	
	
	@RequestMapping(value="/chattingCounseling.do")
	public String chattingCounseling(){
		return "main/chattingCounseling.tiles";
	}
	
	@RequestMapping(value="/counselingList.do")
	public String counselingList(){
		return "main/counselingList.tiles";
	}
	
	@RequestMapping(value="/chattingList.do")
	public String chattingList(){
		return "main/chattingList.tiles";
	}
	
	@RequestMapping(value="/chattingListDetail.do")
	public String chattingListDetail(){
		return "main/chattingListDetail.tiles";
	}
	
	@RequestMapping(value="/reservationList.do")
	public String reservationList(){
		return "main/reservationList.tiles";
	}
	
	@RequestMapping(value="/reservationListDetail.do")
	public String reservationListDetail(){
		return "main/reservationListDetail.tiles";
	}
	
}

