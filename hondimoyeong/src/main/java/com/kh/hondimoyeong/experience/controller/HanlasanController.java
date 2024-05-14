package com.kh.hondimoyeong.experience.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HanlasanController {
	
	@RequestMapping("hanlasan")
	public String hanlasan(){
		return "experience/hanlasan";
	}
	
	@GetMapping("handetail")
	public String handetail() {
		return "experience/handetail";
	}    
	
	
	

}
