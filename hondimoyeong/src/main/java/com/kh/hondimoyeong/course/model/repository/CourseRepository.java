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
	
<<<<<<< Updated upstream
	public Course courseDetail(SqlSessionTemplate sqlSession, int courseIndex) {
		return sqlSession.selectOne("courseMapper.courseDetail", courseIndex);
	}
	
	public int updateCourse(SqlSessionTemplate sqlSession, Course course) {
		return sqlSession.update("courseMapper.updateCourse", course);
	}
	
	public int updateStamp(SqlSessionTemplate sqlSession, CourseFile stamp) {
		return sqlSession.insert("courseMapper.updateStamp", stamp);
=======
	public Course selectCourse(SqlSessionTemplate sqlSession, int courseIndex) {
		return sqlSession.selectOne("courseMapper.selectCourse", courseIndex);
>>>>>>> Stashed changes
	}
}
