package com.kh.hondimoyeong.course.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.hondimoyeong.course.model.service.CourseService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class AjaxCourseController {
	
	
	private final CourseService courseService;
	
	@GetMapping(value="mainCourse", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String mainCourse() {
		return new Gson().toJson(courseService.allCourseList());
	}
	
	@GetMapping(value="selectCourse", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String selectCourse(int courseIndex) {
		return new Gson().toJson(courseService.courseDetail(courseIndex));
	}
	
	@GetMapping(value="userCourse", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String userCourse(int userNo) {
		return new Gson().toJson(courseService.userCourse(userNo));
	}

}
