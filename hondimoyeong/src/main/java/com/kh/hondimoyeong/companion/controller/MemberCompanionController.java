package com.kh.hondimoyeong.companion.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.common.template.Pagination;
import com.kh.hondimoyeong.companion.model.service.MemberCompanionService;
import com.kh.hondimoyeong.member.model.vo.Member;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class MemberCompanionController {

	private final MemberCompanionService companionService;
	
	@RequestMapping("companionInvite")
	public String companionInvite(HttpSession session,
								 @RequestParam(defaultValue="1")int page,
								  Model model) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		int userNo = loginUser.getUserNo();

		PageInfo pi = Pagination.getPageInfo(companionService.myListCount(userNo), page, 5, 5);
		
		model.addAttribute("list", companionService.myList(userNo, pi));
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
		
		PageInfo pi = Pagination.getPageInfo(companionService.myRequestCount(userNo), page, 5, 5);
		
		model.addAttribute("list", companionService.myRequest(userNo, pi));
		model.addAttribute("pageInfo", pi);
		
		System.out.println(companionService.myRequest(userNo, pi));
		return "member/requestList";
	}
	
}
