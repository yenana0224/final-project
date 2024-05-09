package com.kh.hondimoyeong.experience;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AquaplanetController {
	
	@RequestMapping("aqua")
	public String aqua() {
		return "experience/aquaplanet";
	}

}
