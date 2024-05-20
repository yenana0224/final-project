package com.kh.hondimoyeong.experience.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.hondimoyeong.experience.model.service.ReserveService;
import com.kh.hondimoyeong.experience.model.vo.Experience;
import com.kh.hondimoyeong.member.model.vo.Member;

@Controller
public class HanlasanController {
	
	@Autowired
	private  ReserveService reserveService;
	
	@RequestMapping("hanlasan")
	public String hanlasan(){
		return "experience/hanlasan";
	}
	
	@GetMapping("handetail")
	public String handetail() {
		return "experience/handetail";
	}    
	
	@GetMapping("hanreserve")
	public String hanreserve() {
		return "experience/hanreserve";
	}
	
	@PostMapping("hanlasanreserve")
	public String hanlasanreserve(Experience experience, Model model, HttpSession session) {
		
        int userNo = ((Member)session.getAttribute("loginUser")).getUserNo();

		experience.setUserNo(userNo);
		
		System.out.println(experience);
		
		reserveService.insertHan(experience);
		
		model.addAttribute("ex", experience);
		
		return "experience/kakaoSuccess";
	}
	 
	

}
