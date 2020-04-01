package com.sixpack.chat.admin.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.sixpack.chat.admin.domain.EmpDetailDomain;
import com.sixpack.chat.admin.domain.EmpListDomain;
import com.sixpack.chat.admin.service.impl.EmpListServiceImpl;
import com.sixpack.chat.admin.vo.PagingVO;

@Controller
public class EmpController {

	ApplicationContext ac = new ClassPathXmlApplicationContext("com/sixpack/chat/admin/di/ApplicationContextMain.xml");

	@Autowired
	private EmpListServiceImpl els;
//	private IndexService is;
	
	///////////////////////////////////// 화면이동/////////////////////////////////////////////
	@RequestMapping(value = "/empList.do", method = { GET, POST })
	public ModelAndView empList(HttpSession session, ModelAndView mav, HttpServletRequest request,
			@RequestParam(value="curPage", defaultValue="1") int curPage 
			) throws Exception{
		
		els = ac.getBean(EmpListServiceImpl.class);
		mav.setViewName("main/empList.tiles");
		
		//리턴값을 담을 맵
		Map<String, Object> map = new HashMap<String, Object>();
		
		// session
		session.setAttribute("id", "admin");
		String conId = (String) session.getAttribute("id");
		
		//로그인한 상태라면 진입
		if (conId != null) {
			//총 데이터 개수를 가져온다.
			int total = els.totalCnt(request);
			map.put("totalCnt", total);

			//페이징 정보 셋팅
			PagingVO pagination = new PagingVO(total, curPage);	//총 데이터 개수와 현재 페이지 정보를 넘긴다.
			request.setAttribute("startIndex", pagination.getStartIndex());
			request.setAttribute("endIndex", pagination.getPageSize());
			map.put("pagination", pagination);
			
			// 게시글 구하기
			request.setAttribute("curPage", curPage);
			List<EmpListDomain> con_list = els.searchEmpList(conId, request);
			if (!con_list.isEmpty()) {
				map.put("conList", con_list);
			} // end if
		} // end if
		
		mav.addObject("map", map);
		
		return mav;
	} // empList

	//select
	@RequestMapping(value = "/empListDetail.do", method = { GET, POST })
	public ModelAndView empListDetail(HttpSession session, ModelAndView mav, HttpServletRequest request) {
		mav.setViewName("main/empListDetail.tiles");
		
		String empSeq = request.getParameter("empSeq");
		String mode = "insert";
		
		//여기서 id가 있으면 update, 없으면 insert 할거야 깔기가 해봐
		if(empSeq != null){
			mode = "update";
		}
		
		EmpDetailDomain list = els.searchEmpDetail(empSeq);
		mav.addObject("detail_list", list);
		mav.addObject("mode", mode);
		
		return mav;
	} // empListDetail
	

	//insert & update
	@ResponseBody
	@RequestMapping(value = "/empModifyInfo.do", method=RequestMethod.POST, produces="text/plain;charset=utf-8")
	public String modEmpUser (HttpSession session, ModelAndView mav, HttpServletRequest request, @RequestParam("file") MultipartFile file) throws Exception{
		//모드값을 가져온다.
		String mode = request.getParameter("mode");
		int modEmpUser = 0;
		
		if ("insert".equals(mode)) {
			modEmpUser = els.insertEmpUser(request, file);
		} else {
			modEmpUser = els.modifyEmpUser(request, file);
		} // end if
		
		Gson gson = new Gson();
		return gson.toJson(modEmpUser);
	} // ModEmpUser

	//delete
	@ResponseBody
	@RequestMapping(value = "/empDeleteInfo.do", method = { GET, POST })
	public String delEmpUser (HttpSession session, HttpServletRequest request){
		String empId = request.getParameter("empId");	
		int delEmpUser = 0;
		delEmpUser = els.delEmpUser(empId);
		
		Gson gson = new Gson();
		return gson.toJson(delEmpUser);
	} //delEmpUser
	
	// 중복 확인
	@ResponseBody
	@RequestMapping(value = "/idCheck.do", method = { GET, POST })
	public String idCheck(HttpSession session, HttpServletRequest request) throws Exception {
		String empId = request.getParameter("empId");
		
		int idCheck = els.idCheck(empId);
		
		Gson gson = new Gson();
		return gson.toJson(idCheck);
	} //IdCheck	
	
} // class
