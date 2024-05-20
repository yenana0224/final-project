package com.kh.hondimoyeong.member.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.hondimoyeong.experience.model.service.ReserveService;
import com.kh.hondimoyeong.experience.model.vo.Experience;

@Controller
public class AdminController {
	
	@Autowired
	private ReserveService reserveService;
	
	@GetMapping("saleMain")
	public ModelAndView saleMain(ModelAndView mv, HttpSession session) {
		
		
		List<Experience> saleList =  reserveService.findAll();
		
		System.out.println(saleList);
		
		session.setAttribute("saleList", saleList);
		mv.setViewName("common/adminMain");
		
		return mv;
	}
	
	

}
