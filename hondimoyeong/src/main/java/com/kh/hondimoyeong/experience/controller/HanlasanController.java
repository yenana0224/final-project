package com.kh.hondimoyeong.experience.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.hondimoyeong.experience.model.service.ReserveService;
import com.kh.hondimoyeong.experience.model.vo.Experience;
import com.kh.hondimoyeong.experience.model.vo.Exreview;
import com.kh.hondimoyeong.member.model.vo.Member;
import com.kh.hondimoyeong.review.model.vo.Review;

@Controller
public class HanlasanController {
	
	@Autowired
	private  ReserveService reserveService;
	
	@RequestMapping("hanlasan")
	public String hanlasan(HttpSession session){

		if(!(session.getAttribute("loginUser")== null)) {
		
			int userNo = ((Member)session.getAttribute("loginUser")).getUserNo();
			//System.out.println(userNo);
			
			
			if(userNo > 0) {
				List<Experience> experience = reserveService.excheck(userNo);
				System.out.println(experience);
				
				if(!(experience == null)) {
					session.setAttribute("experience", experience);
				}
			}
		}
		
		// 한라산 리뷰 전부 조회
		Exreview exreview = new Exreview();
		exreview.setExperienceCategory("한라산");
		List<Exreview> review = reserveService.review(exreview);
		System.out.println("흠 " + review);
		session.setAttribute("reviewh", review);
		
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
		
		//System.out.println(experience);
		
		reserveService.insertHan(experience);
		
		model.addAttribute("ex", experience);
		
		return "experience/kakaoSuccess";
	}
	
	@PostMapping("exreviewh")
	public String exriview(Exreview exreview, HttpSession session) {
		
		System.out.println("쓴리뷰" + exreview);
		
		int experienceNo = ((List<Experience>)session.getAttribute("experience")).get(0).getExperienceNo();
		
		exreview.setExperienceNo(experienceNo);
		
		
		int exre = reserveService.insertreview(exreview);
		
		if(exre > 0) {
			session.setAttribute("alertMsg", "작성되었습니다!");
		}
		return "redirect:hanlasan";
	}
	 
	

}
