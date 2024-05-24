package com.kh.hondimoyeong.companion.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.hondimoyeong.companion.model.service.MemberCompanionService;
import com.kh.hondimoyeong.member.model.vo.Member;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class AjaxMemberCompanionController {
	
	private final MemberCompanionService MemberCompanionService;
	
	@ResponseBody
	@GetMapping(value="companions/acompany", produces="application/json; charset=UTF-8")
	public String accompanyList(int companionNo,
								HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		int userNo = loginUser.getUserNo();
		
		HashMap<String, Integer> data = new HashMap<String, Integer>();
		data.put("userNo", userNo);
		data.put("companionNo", companionNo);

		return new Gson().toJson(MemberCompanionService.appliList(data));
	}
	
	@ResponseBody
	@GetMapping(value="alram", produces="application/json; charset=UTF-8")
	public int alam(int userNo) {
		return MemberCompanionService.alram(userNo);
	}
	
	@ResponseBody
	@GetMapping(value="permission", produces="application/json; charset=UTF-8")
	public int memberPermission(int userNo, int companionNo) {
		HashMap<String, Integer> data = new HashMap<String, Integer>();
		data.put("userNo", userNo);
		data.put("companionNo", companionNo);
		
		return MemberCompanionService.memberPermission(data);
	}
	
	@ResponseBody
	@GetMapping(value="rejection", produces="application/json; charset=UTF-8")
	public int memberRejection(int userNo, int companionNo) {
		HashMap<String, Integer> data = new HashMap<String, Integer>();
		data.put("userNo", userNo);
		data.put("companionNo", companionNo);
		
		return MemberCompanionService.memberRejection(data);
	}
	

}
