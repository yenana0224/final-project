package com.kh.hondimoyeong.member.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.common.template.Pagination;
import com.kh.hondimoyeong.experience.model.service.ReserveService;
import com.kh.hondimoyeong.experience.model.vo.Experience;

@Controller
public class AdminController {
	
	@Autowired
	private ReserveService reserveService;
	
	@GetMapping(value="saleMain", produces="application/json; charset=UTF-8")
	@ResponseBody
	public ModelAndView saleMain(@RequestParam(value="page", defaultValue="1") 
								  int page, HttpSession session, ModelAndView mv) {
		
		
		//List<Experience> saleList =  reserveService.findAll();
		
		//System.out.println(saleList);
		
		PageInfo pi = Pagination.getPageInfo(reserveService.selectListCount(), page, 5, 5);
		
		
		//System.out.println(pi);
		
		
		session.setAttribute("list",reserveService.selectList(pi));
		
		//System.out.println("dd" + reserveService.selectList(pi));
		
		session.setAttribute("pageInfo",pi);
		
		
		
		mv.setViewName("common/adminMain");
		
		return mv;
		//return "experience/addMain";
	}
	
//	@GetMapping(value="salesale", produces="application/json; charset=UTF-8")
//	@ResponseBody
//	public String salesale(@RequestParam(value="page", defaultValue="1") int page) {
//		
//
//		PageInfo pi = Pagination.getPageInfo(reserveService.selectListCount(), page, 5, 5);
//		System.out.println(pi);
//		
//		return new Gson().toJson(pi);
//	}


	
	
	
	
	
	
	

}
