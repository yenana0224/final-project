package com.kh.hondimoyeong.experience.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TangerineController {
	
	@GetMapping("tangerine")
	public String tangerine() {
		return "experience/tangerine";
	}

}
