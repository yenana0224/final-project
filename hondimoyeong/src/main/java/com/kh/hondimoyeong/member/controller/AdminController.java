package com.kh.hondimoyeong.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.common.template.Pagination;
import com.kh.hondimoyeong.experience.model.service.ReserveService;

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
		
		PageInfo pi = Pagination.getPageInfo(reserveService.selectListCount(), page, 5, 10);
		
		
		//System.out.println(pi);
		
		
		session.setAttribute("list",reserveService.selectList(pi));
		
		System.out.println(reserveService.selectList(pi));
		
		session.setAttribute("pageInfo",pi);
		
		
		
		mv.setViewName("common/adminMain");
		
		return mv;
		//return "experience/addMain";
	}
	
	@RequestMapping("detail.ex")
	public ModelAndView findByBoardNo(int experienceNo,	// int형으로 작성하면 알아서 parsing해줌
									  ModelAndView mv) {
		
			System.out.println(experienceNo);
			
			mv.addObject("experienceDetail", reserveService.selectexperience(experienceNo))
				.setViewName("common/adminMaindetail");
			
			System.out.println(reserveService.selectexperience(experienceNo));
		
		return mv;
	}

	@GetMapping("adminPage")
	public String adminPage() {
		return "common/adminMain";
	}
	
	
	
	
	
	
	

}
