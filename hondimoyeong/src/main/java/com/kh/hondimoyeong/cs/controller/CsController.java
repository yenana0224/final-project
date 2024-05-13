package com.kh.hondimoyeong.cs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.common.template.Pagination;
import com.kh.hondimoyeong.cs.model.service.NoticeService;

@Controller
public class CsController {
	
//	@RequestMapping("cs")
//	public String cs() {
//		return "cs/csList";
//	}
//
//	@RequestMapping("noticeDetail")
//	public String csDetail() {
//		return "cs/noticeDetail";
//	}
	
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("cs")
	public String selectAll(@RequestParam(value="page", defaultValue="1") int page, Model model) {
		
		PageInfo pi = Pagination.getPageInfo(noticeService.selectListCount(), page, 5, 5);
		
		model.addAttribute("list", noticeService.selectList(pi));
		model.addAttribute("pageInfo", pi);
		
		return "cs/csList";
	}
}
