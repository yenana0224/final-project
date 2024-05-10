package com.kh.hondimoyeong.experience.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AquaplanetController {
	
	@RequestMapping("aqua")
	public String aqua() {
		return "experience/aquaplanet";
	}
	
	@GetMapping("aquadetail")
	public String aquadetail() {
		return "experience/aquadetail";
	}
	
	@GetMapping("aquareserve")
	public String aquareserve() {
		return "experience/aquareserve";
	}

}
