package com.kh.hondimoyeong.review.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReviewController {
	
	@RequestMapping("review")
	public String reviewList() {
		return "review/reviewList";
	}

	@RequestMapping("reviewDetail")
	public String reviewDetail() {
		return "review/reviewDetail";
	}

}
