package com.kh.hondimoyeong.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.hondimoyeong.course.model.service.CourseService;

@Controller
public class MemberViewController {
	
	@Autowired
	private CourseService courseService;
	
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
	public String companionInvite() {
		return "member/companionInvite";
	}
	
	@RequestMapping("completeCourse")
	public String completeCourse(Model model) {
		model.addAttribute("list", courseService.stampList());
		return "member/completeCourse";
	}
	
	
	
	
	
	
	
	
	
	
	
}
