package com.kh.hondimoyeong.course.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import com.kh.hondimoyeong.course.model.service.CourseService;

@Controller
public class CourseController {
	
	@Autowired
	private CourseService courseService;
	
	@GetMapping("courses")
	public ModelAndView CourseMain(ModelAndView mv) {
		mv.addObject("list", courseService.allCourseList()).setViewName("course/courseMain");
		return mv;
	}
	
	@GetMapping("course/{courseIndex}")
	public String courseDetail(@PathVariable int courseIndex) {
		System.out.println(courseIndex);
		return "";
	}

}
