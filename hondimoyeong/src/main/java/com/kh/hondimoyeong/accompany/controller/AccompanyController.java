package com.kh.hondimoyeong.accompany.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.hondimoyeong.accompany.model.service.AccompanyService;
import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.common.template.Pagination;

@Controller
public class AccompanyController {
	
	@Autowired
	private AccompanyService accompanyService;
	
	@RequestMapping("list.accompany")
	public String selectAll(@RequestParam(value="page", defaultValue="1") int page, Model model) {
		
		PageInfo pi = Pagination.getPageInfo(accompanyService.selectListCount(), page, 10, 5);
		
		model.addAttribute("accompany", accompanyService.selectAll(pi));
		model.addAttribute("pageInfo", pi);
		
		return "accompany/accompanyList";
	}
	
	@RequestMapping("accompanyDetail")
	public String accompanyDetail() {
		return "accompany/accompanyDetail";
	}
}
