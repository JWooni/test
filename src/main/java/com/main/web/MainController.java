package com.main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping(value="/main.do")
	public String main(){
		return "main/index";
	}
	
	@RequestMapping(value="/widgets.do")
	public String widgets(){
		return "main/widgets";
	}
	
	@RequestMapping(value="/charts.do")
	public String charts(){
		return "main/charts";
	}
	
	@RequestMapping(value="/elements.do")
	public String elements(){
		return "main/elements";
	}
	
	@RequestMapping(value="/panels.do")
	public String panels(){
		return "main/panels";
	}
	
	@RequestMapping(value="/login.do")
	public String login(){
		return "main/login";
	}
	
}
