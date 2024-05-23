package com.kh.hondimoyeong.companion.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.kh.hondimoyeong.companion.model.service.CompanionService;

@RestController
@RequestMapping(value="companions", produces="application/json; charset=UTF-8")
public class AjaxCompanionController {
	
	@Autowired
	CompanionService companionService;
	
	@GetMapping
	public String sortCompanions() {
		return new Gson().toJson(companionService.sortCompanions());
	}
	
	@ResponseBody
	@GetMapping(value="/acompany", produces="application/json; charset=UTF-8")
	public String accompanyList(int companionNo) {
		companionService.accompanyList(companionNo);
		
		return "";
	}

}

