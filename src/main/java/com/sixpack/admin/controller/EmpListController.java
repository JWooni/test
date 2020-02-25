package com.sixpack.admin.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sixpack.admin.vo.ListVO;
import com.sixpack.admin.domain.EmpListDomain;
import com.sixpack.admin.service.EmpListService;
import com.sixpack.admin.service.IndexService;

@Controller
public class EmpListController {

	ApplicationContext ac = new ClassPathXmlApplicationContext("com/sixpack/admin/di/ApplicationContextMain.xml");

	@Autowired
	private EmpListService els;
	@Autowired
	private IndexService is;
	
	///////////////////////////////////// 화면이동/////////////////////////////////////////////
	@RequestMapping(value = "/empList.do", method = { GET, POST })
	public ModelAndView empList(HttpSession session, ListVO lvo, ModelAndView mav,
			@RequestParam(value="searchOption", required=false)String option, 
			@RequestParam(value="keyword", required=false)String keyword) throws Exception{
		System.out.println("======================1=======================");
		
		mav.setViewName("main/empList.tiles");

		return mav;
		
	} // empList

	@RequestMapping(value = "/empListDetail.do", method = { GET, POST })
	public String empListDetail(HttpSession session) {

		return "main/empListDetail.tiles";
	}

} // class
