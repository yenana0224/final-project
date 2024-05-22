package com.kh.hondimoyeong.course.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.hondimoyeong.course.model.service.CourseService;

@Controller
public class CourseController {
	
	private String serviceKey = "8fb9d532bba6f497bc125efc82a1127e";
	
	@Autowired
	private CourseService courseService;
	
	@GetMapping("courses")
	public ModelAndView CourseMain(ModelAndView mv) {
		mv.addObject("list", courseService.allCourseList()).setViewName("course/courseMain");
		return mv;
	}
	
	@GetMapping("course")
	public String courseDetail(@RequestParam int courseIndex,
								Model model) {
		model.addAttribute("course", courseService.courseDetail(courseIndex));
		model.addAttribute("list", courseService.allCourseList());
		
		return "course/courseDetail";
	}

}
