package com.sixpack.chat.admin.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sixpack.chat.admin.service.AdminService;
import com.sixpack.chat.admin.vo.AdminVO;

@Controller
public class AdminController {

	
	@Autowired
	AdminService adminService;
	
	//로그인 확인 
	@ResponseBody
	@RequestMapping(value="/login.do", method=RequestMethod.POST) 
	public ModelAndView insertcontent(HttpServletRequest request) throws Exception{
		// 전달 받은 파라미터 값  NULL 처리 해줘야함.
		String id = request.getParameter("userId");
		String pw = request.getParameter("userPw");
		
		ModelAndView mv = new ModelAndView();
		
		/* 로그인 정보 유지 여부 쿠키 
		String rememberInfo = request.getParameter("rememberInfo");
		
		if(rememberInfo != null) {
			// cookie 체크 
			// 없을 경우, 쿠키 생성 
			
		}*/
		
		//map 생성
		Map<String, String> map = new HashMap();	// Key 와 Value 의 값을 갖고있기 때문에  첫번째는 Key, 두번째는 Value 의 자료형을 선언해준것이다. 지금같은경우는 둘 다 String 형인것이다.
		map.put("id", id);	//"id" 는 key 이고 id 는 value 가 됩니다. 데이터를 추가하는 역할.
		
		//id로 관리자 정보 조회
		AdminVO admin = adminService.selectAdmin(map);
		
		// admin.getPW() > 보통 암호화 되어있어서 복호화 필요.. 하고 싶으면 문의 바랍니다.  
		if(admin.getEmpId().equals(id) && admin.getEmpPwd().equals(pw)) {
			System.out.println("id, pw 일치");
			
			//session 추가 
			HttpSession httpSession = request.getSession(true);
			httpSession.setAttribute("ADMIN", admin);
		
			mv.setViewName("main/empList.tiles");

		}else {
			System.out.println("id, pw 불일치");
			//로그인 페이지로 이동 // 모르겟음 어디서 타일즈 연동하는지
			mv.setViewName("main/main.tiles");

		}
		
		return mv;
	}
}
