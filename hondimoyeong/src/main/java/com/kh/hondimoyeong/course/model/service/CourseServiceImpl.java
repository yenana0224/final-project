package com.kh.hondimoyeong.course.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.hondimoyeong.course.model.repository.CourseRepository;
import com.kh.hondimoyeong.course.model.vo.Course;

@Service
public class CourseServiceImpl implements CourseService{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private CourseRepository courseRepository;
	
	@Override
	public List<Course> allCourseList() {
		return courseRepository.allCourseList(sqlSession);
	}

	@Override
	public int loadFromApi(List<Course> list) {
		return courseRepository.loadFromApi(sqlSession, list);
	}

	@Override
	public Course courseDetail(int courseIndex) {
		return courseRepository.courseDetail(sqlSession, courseIndex);
	}
	
	
	

}
