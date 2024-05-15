package com.kh.hondimoyeong.course.model.service;

import java.util.List;

import com.kh.hondimoyeong.course.model.vo.Course;
import com.kh.hondimoyeong.course.model.vo.CourseFile;

public interface CourseService {

	List<Course> allCourseList();
	
	int loadFromApi(List<Course> list);
	
<<<<<<< Updated upstream
	Course courseDetail(int courseIndex);
	
	int updateCourse(Course course);
	
	int updateStamp(CourseFile stamp);
=======
	Course selectCourse(int courseIndex);
>>>>>>> Stashed changes
}
