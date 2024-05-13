package com.kh.hondimoyeong.cs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.common.template.Pagination;
import com.kh.hondimoyeong.cs.model.service.NoticeService;

@Controller
public class CsController {
	
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("list.notice")
	public String selectAll(@RequestParam(value="page", defaultValue="1") int page, Model model) {
		
		PageInfo pi = Pagination.getPageInfo(noticeService.selectListCount(), page, 10, 5);
		
		model.addAttribute("notice", noticeService.selectList(pi));
		model.addAttribute("pageInfo", pi);
		
		return "cs/csList";
	}
	
	@RequestMapping("detail.notice")
	public ModelAndView detailNotice(ModelAndView mv, int noticeNo) {
		if(noticeService.increaseCount(noticeNo) > 0) {
			mv.addObject("notice", noticeService.selectNotice(noticeNo)).setViewName("cs/noticeDetail");
		} else {
			mv.addObject("errorMsg", "상세조회 실패");
		}
	}
	
}
