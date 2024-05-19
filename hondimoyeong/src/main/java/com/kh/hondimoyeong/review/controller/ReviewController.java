package com.kh.hondimoyeong.review.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.common.template.Pagination;
import com.kh.hondimoyeong.review.model.service.ReviewService;
import com.kh.hondimoyeong.review.model.vo.Review;

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

	@RequestMapping("detail.rvw")
	public ModelAndView detail(int reviewNo, ModelAndView mv) {
		if(reviewService.increaseCount(reviewNo) > 0) {
			mv.addObject("review", reviewService.selectReview(reviewNo)).setViewName("review/reviewDetail");
		} else {
			mv.addObject("errorMsg", "조회 실패했습니다.").setViewName("common/errorPage");
		}
		return mv;
	}
	
	@RequestMapping("search.rvw")
	public String search(@RequestParam(value="keyword") String keyword,
						 @RequestParam(value="condition") String condition,
						 @RequestParam Map<String, String> map,
						 @RequestParam(value="page", defaultValue="1") int page, Model model) {
		
		Map<String, String> searchMap = new HashMap<String, String>();
		searchMap.put("condition", condition);
		searchMap.put("keyword", keyword);
		
		int totalCount = reviewService.searchCount(searchMap);
		PageInfo pi = Pagination.getPageInfo(totalCount, page, 10, 5);
		List<Review> review = reviewService.search(searchMap, pi);
		
		model.addAttribute("keyword", keyword);
		model.addAttribute("condition", condition);
		model.addAttribute("review", review);
		model.addAttribute("searchPage", pi);
		
		return "review/reviewList";
	}

}
