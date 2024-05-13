package com.kh.hondimoyeong.accompany.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AccompanyController {
	
	@RequestMapping("accompany")
	public String accompany() {
		return "accompany/accompanyList";
	}
	
	@RequestMapping("accompanyDetail")
	public String accompanyDetail() {
		return "accompany/accompanyDetail";
	}
}
