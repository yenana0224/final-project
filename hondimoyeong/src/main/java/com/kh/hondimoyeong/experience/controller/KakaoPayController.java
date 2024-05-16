package com.kh.hondimoyeong.experience.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.hondimoyeong.experience.model.service.KakaoPayService;

import lombok.RequiredArgsConstructor;
import lombok.extern.java.Log;

@Controller
@RequiredArgsConstructor
@Log
public class KakaoPayController {
	
	@Autowired
	 KakaoPayService kakaoPay;
	
	@GetMapping("kakaop")
	public String kakaop() {
		return "experience/kakaop";
	}
	
	@PostMapping("kakaoPay")
    public String kakaoPay(){
        log.info("kakaoPay post.....................");

		
        return "redirect:" + kakaoPay.kakaoPayReady();
    }
	
	@GetMapping("/kakaoPaySuccess")
    public String kakaoPaySuccess(@RequestParam("pg_token")String pg_token, Model model) {
        log.info("kakaoPay Success get................");
        log.info("kakaoPaySuccess pg_token : " + pg_token);
        
        model.addAttribute("pg_token", pg_token);
        return "redirect:" + kakaoPay.kakapayVo();
    }
	
	
	
	
	
	

}
