package com.nt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping
public class JumpController {
	
	@RequestMapping("/index")
	public String jumpToindex() {
		return "indextemp";
	}
	@RequestMapping("/register")
	public String jumpToRegister() {
		return "register";
	}
	@RequestMapping("/login")
	public String jumpToLogin() {
		return "login";
	}
	@RequestMapping("/left")
	public String jumpToLeft() {
		return "left";
	}
	
	@RequestMapping("/main2")
	public String jumpToMain() {
		return "main2";
	}
	
	@RequestMapping("/jumpUpdate")
	public ModelAndView jumpUpdate(int id) {
		ModelAndView mav=new ModelAndView();
		mav.addObject("USER_id",id);
		mav.setViewName("update");
		return mav;
	}
	
	@RequestMapping("/userBook")
	public String jumpUserBook() {
		return "upAndDown";
	}

}
