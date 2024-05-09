package com.kh.hondimoyeong.experience.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HanlasanController {
	
	@GetMapping("hanlasan")
	public String hanlasan(){
		return "hanlasan";
	}
	

}
