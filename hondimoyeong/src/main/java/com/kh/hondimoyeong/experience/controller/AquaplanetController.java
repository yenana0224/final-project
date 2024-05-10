package com.kh.hondimoyeong.experience.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String aquareserve(String category, int price, Model model) {
		model.addAttribute("category", category);
		model.addAttribute("price", price);
		return "experience/aquareserve";
	}

}
