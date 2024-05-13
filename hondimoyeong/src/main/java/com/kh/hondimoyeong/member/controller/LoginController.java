package com.kh.hondimoyeong.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	
	@RequestMapping("login")
	public String login() {
		return "member/login";
	}

	
	@RequestMapping("insertForm")
	public String insertForm() {
		return "member/insertForm";
	}	
	
}
