package com.kh.hondimoyeong.companion.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.common.template.Pagination;
import com.kh.hondimoyeong.companion.model.service.MemberCompanionService;
import com.kh.hondimoyeong.member.model.vo.Member;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class MemberCompanionController {

	private final MemberCompanionService MemberCompanionService;
	
	@GetMapping(value="accompanyRequest", produces="html/text; charset=UTF-8")
	@ResponseBody
	public String accompanyRequest(int userNo, int companionNo) {
		HashMap<String, Integer> data = new HashMap<String, Integer>();
		data.put("userNo", userNo);
		data.put("companionNo", companionNo);
		
		return (MemberCompanionService.accompanyRequest(data)> 0) ? "신청완료되었습니다." : "신청이 되지 않았습니다.";
	}
	
	@GetMapping("companionInvite")
	public String companionInvite(HttpSession session,
								 @RequestParam(defaultValue="1")int page,
								  Model model) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		int userNo = loginUser.getUserNo();

		PageInfo pi = Pagination.getPageInfo(MemberCompanionService.myListCount(userNo), page, 5, 5);
		
		model.addAttribute("list", MemberCompanionService.myList(userNo, pi));
		model.addAttribute("pageInfo", pi);

		//System.out.println(companionService.myList(userNo, pi));
		
		return "member/companionInvite";
	}
	
	@GetMapping("myRequest")
	public String requestList(@RequestParam(defaultValue="1")int page,
							 HttpSession session,
							 Model model) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		int userNo = loginUser.getUserNo();
		
		PageInfo pi = Pagination.getPageInfo(MemberCompanionService.myRequestCount(userNo), page, 5, 5);
		
		model.addAttribute("list", MemberCompanionService.myRequest(userNo, pi));
		model.addAttribute("pageInfo", pi);
		
		System.out.println(MemberCompanionService.myRequest(userNo, pi));
		return "member/requestList";
	}

	
	

}
