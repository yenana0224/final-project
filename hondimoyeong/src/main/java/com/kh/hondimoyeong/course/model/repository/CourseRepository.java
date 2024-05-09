package com.kh.hondimoyeong.course.model.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.hondimoyeong.course.model.vo.Course;



@Repository
public class CourseRepository {
	
	public List<Course> allCourseList(SqlSessionTemplate sqlSession){
		return sqlSession.selectList("courseMapper.allCourseList");
	}
	
	public int loadFromApi(SqlSessionTemplate sqlSession, List<Course> list) {
		return sqlSession.insert("courseMapper.loadFromApi", list);
	}
}
