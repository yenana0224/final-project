package com.kh.hondimoyeong.course.model.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.hondimoyeong.course.model.vo.Course;
import com.kh.hondimoyeong.course.model.vo.CourseFile;



@Repository
public class CourseRepository {
	
	public List<Course> allCourseList(SqlSessionTemplate sqlSession){
		return sqlSession.selectList("courseMapper.allCourseList");
	}
	
	public int loadFromApi(SqlSessionTemplate sqlSession, List<Course> list) {
		return sqlSession.insert("courseMapper.loadFromApi", list);
	}
	
	public Course courseDetail(SqlSessionTemplate sqlSession, int courseIndex) {
		return sqlSession.selectOne("courseMapper.courseDetail", courseIndex);
	}
	
	public int updateCourse(SqlSessionTemplate sqlSession, Course course) {
		return sqlSession.update("courseMapper.updateCourse", course);
	}
	
	public int updateStamp(SqlSessionTemplate sqlSession, CourseFile stamp) {
		return sqlSession.insert("courseMapper.updateStamp", stamp);
	}
	
	public int updateDetailMap(SqlSessionTemplate sqlSession, CourseFile detailMap) {
		return sqlSession.insert("courseMapper.updateDetailMap", detailMap);
	}
	
	public int updatePhoto(SqlSessionTemplate sqlSession, List<CourseFile> photoList) {
		return sqlSession.insert("courseMapper.updatePhoto", photoList);
	}
	
	public List<CourseFile> stampList(SqlSessionTemplate sqlSession){
		return sqlSession.selectList("courseMapper.stampList");
	}
	
	public List<Course> userCourse(SqlSessionTemplate sqlSession, int userNo){
		return sqlSession.selectList("courseMapper.userCourse", userNo);
	}
}
