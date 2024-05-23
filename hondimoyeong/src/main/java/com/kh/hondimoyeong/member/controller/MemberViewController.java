package com.kh.hondimoyeong.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.hondimoyeong.companion.model.service.MemberCompanionService;
import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.common.template.Pagination;
import com.kh.hondimoyeong.companion.model.service.CompanionService;
import com.kh.hondimoyeong.course.model.service.CourseService;
import com.kh.hondimoyeong.member.model.vo.Member;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class MemberViewController {
	
	private final CourseService courseService;
	private final MemberCompanionService companionService;
	
	@Autowired
	private CompanionService companionService;
	
	// 화면
	@RequestMapping("login")
	public String login() {
		return "member/login";
	}

	@RequestMapping("insertForm")
	public String insertForm() {
		return "member/insertForm";
	}	
	
	@RequestMapping("searchIdForm")
	public String searchIdForm() {
		return "member/searchIdForm";
	}
	
	@RequestMapping("searchPwdForm")
	public String searchPwdForm() {
		return "member/searchPwdForm";
	}
	
	@RequestMapping("myPage")
	public String myPage() {
		return "member/myPage";
	}

	@RequestMapping("myPageUpdate")
	public String myPageUpdate() {
		return "member/myPageUpdate";
	}
	
	@RequestMapping("reservationList")
	public String reservationList() {
		return "member/reservationList";
	}
	
	@RequestMapping("list.customerView")
	public String selectAll() {
		return "member/customerList";
	}
	
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
	
	@RequestMapping("completeCourse")
	public String completeCourse(Model model) {
		model.addAttribute("list", courseService.stampList());
		return "member/completeCourse";
	}
	
	@RequestMapping("customerEnrollForm")
	public String customerEnrollForm() {
		return "member/customerEnrollForm";
	}
	
	
	@RequestMapping("list.reservationListView")
	public String reservationSelectAll() {
		return "member/reservationList";
	}
	
	
	
	
	
	
	
}
