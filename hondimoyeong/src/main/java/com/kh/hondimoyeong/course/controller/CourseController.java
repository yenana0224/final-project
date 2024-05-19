package com.kh.hondimoyeong.course.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	@GetMapping("course")
	public ModelAndView courseDetail(@RequestParam int courseIndex,
								ModelAndView mv) {
		mv.addObject("course", courseService.courseDetail(courseIndex)).setViewName("course/courseDetail");
		return mv;
	}

}
