package com.kh.hondimoyeong.review.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.common.template.Pagination;
import com.kh.hondimoyeong.review.model.service.ReviewService;

@Controller
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping("review")
	public String selectList(@RequestParam(value="page", defaultValue="1") int page, Model model) {
		PageInfo pi = Pagination.getPageInfo(reviewService.selectListCount(), page, 10, 5);
		
		model.addAttribute("review", reviewService.selectList(pi));
		model.addAttribute("pageInfo", pi);
		
		return "review/reviewList";
	}

	@RequestMapping("reviewDetail")
	public String reviewDetail() {
		return "review/reviewDetail";
	}

}
