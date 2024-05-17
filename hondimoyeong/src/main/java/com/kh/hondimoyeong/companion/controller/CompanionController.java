package com.kh.hondimoyeong.companion.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.common.template.Pagination;
import com.kh.hondimoyeong.companion.model.service.CompanionService;
import com.kh.hondimoyeong.companion.model.vo.Companion;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class CompanionController {
	
	@Autowired
	private CompanionService companionService;
	
	@RequestMapping("companion")
	public String selectAll(@RequestParam(value="page", defaultValue="1") int page, Model model) {
		
		PageInfo pi = Pagination.getPageInfo(companionService.selectListCount(), page, 10, 5);
		model.addAttribute("companion", companionService.selectAll(pi));
		model.addAttribute("pageInfo", pi);
		
		return "companion/companionList";
	}
	
	@RequestMapping("companionDetail")
	public String companionDetail() {
		return "companion/companionDetail";
	}
	
	@RequestMapping("sort.companion")
	public String sortCompanion(@RequestParam(value="page", defaultValue="1") int page, Model model) {
		
		int totalCount = companionService.sortCompanionCount();
		PageInfo pi = Pagination.getPageInfo(totalCount, page, 10, 5);
		List<Companion> sort = companionService.sort(pi);
		
		model.addAttribute("sortPage", pi);
		model.addAttribute("companion", sort);
		
		return "companion/companionList";
	}
	
	@RequestMapping("detail.companion")
	public ModelAndView detail(int companionNo, ModelAndView mv) {
		
		if(companionService.increaseCount(companionNo) > 0) {
			mv.addObject("companion", companionService.detailCompanion(companionNo)).setViewName("companion/companionDetail");
		} else {
			mv.addObject("errorMsg", "실패").setViewName("common/errorPage");
		}
		return mv;
	}
	
	@RequestMapping("insert.companion")
	public String insert() {
		return "companion/companionInsertForm";
	}
	
	
}
