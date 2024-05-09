package com.kh.hondimoyeong.course.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.kh.hondimoyeong.course.model.service.CourseServiceImpl;

@Controller
public class AdminCourseController {
	
	@Autowired
	private CourseServiceImpl courseService;
	
	@GetMapping("admin/course")
	public String allCourseList(Model model) {
		model.addAttribute("list", courseService.allCourseList());
		return "admin/course/courseList";
	}
	

}
