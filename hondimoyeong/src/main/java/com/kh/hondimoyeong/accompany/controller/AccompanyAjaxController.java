package com.kh.hondimoyeong.accompany.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.kh.hondimoyeong.accompany.model.service.AccompanyService;
import com.kh.hondimoyeong.accompany.model.vo.Accompany;

@RestController
@RequestMapping(value="companions", produces="application/json; charset=UTF-8")
public class AccompanyAjaxController {
	
	@Autowired
	AccompanyService accompanyService;
	
	@GetMapping
	public String findRecruiting(Model model) {
	    List<Accompany> recruitingList = accompanyService.findRecruiting();
	    String recruiting = new Gson().toJson(recruitingList);
	    model.addAttribute("recruiting", recruiting);
		
		return "accompany/accompanyList";
	}
}
