package com.kh.hondimoyeong.course.model.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kh.hondimoyeong.course.model.vo.Course;

public interface CourseService {

	List<Course> allCourseList();
	
	int loadFromApi(List<Course> list);
	
}
