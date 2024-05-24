package com.kh.hondimoyeong.companion.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.hondimoyeong.companion.model.service.MemberCompanionService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class AjaxMemberCompanionController {
	
	private final MemberCompanionService MemberCompanionService;
	
	@ResponseBody
	@GetMapping(value="companions/acompany", produces="application/json; charset=UTF-8")
	public String accompanyList(int companionNo) {

		return new Gson().toJson(MemberCompanionService.appliList(companionNo));
	}
	
	@ResponseBody
	@GetMapping(value="alram", produces="application/json; charset=UTF-8")
	public int alam(int userNo) {
		return MemberCompanionService.alram(userNo);
	}

}
