package com.sixpack.chat.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sixpack.chat.admin.service.ReservationListService;
import com.sixpack.chat.admin.vo.ReservationListVO;

@Controller
public class ReservationListController {
	
	@Autowired
	private ReservationListService reservationlistservice;	//이거불러올때 위에 저 Auto...이거해줘야하구 private는 앞에 선언해주는 게 좋아
	
	//컨텐츠 수정
	@ResponseBody
	@RequestMapping(value="/updatereservationList.do", method=RequestMethod.POST)
	public void updatereservationList(@ModelAttribute ReservationListVO reservationlistvo) throws Exception{
		System.out.println("updatereservationList()");
		
		System.out.println("empComment : "+ reservationlistvo.getEmpComment());
		System.out.println("resAnsDate : "+ reservationlistvo.getResAnsDate());
		
		ModelAndView mv = new ModelAndView();

		reservationlistservice.updatereservationList(reservationlistvo);

	}

}
