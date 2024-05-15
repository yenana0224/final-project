package com.kh.hondimoyeong.experience.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.hondimoyeong.experience.model.service.KakaoPayService;

import lombok.extern.java.Log;

@Controller
@Log
public class KakaoPayController {
	
	@Autowired
	 KakaoPayService kakaoPay;
	
	@GetMapping("kakaop")
	public String kakaop() {
		return "experience/kakaop";
	}
	
	@RequestMapping("kakaoPay")
    public String kakaoPay(){
       // log.info("kakaoPay post.....................");

		
        return "redirect:" + kakaoPay.kakaoPayReady();
    }

}
