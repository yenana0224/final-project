package com.kh.hondimoyeong.course.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.hondimoyeong.course.model.repository.CourseRepository;
import com.kh.hondimoyeong.course.model.vo.Course;
import com.kh.hondimoyeong.course.model.vo.CourseFile;

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

	@Override
	public int updateCourse(Course course) {
		return courseRepository.updateCourse(sqlSession, course);
	}

	@Override
	public int updateStamp(CourseFile stamp) {
		return courseRepository.updateStamp(sqlSession, stamp);
	}
	
	
	

}
