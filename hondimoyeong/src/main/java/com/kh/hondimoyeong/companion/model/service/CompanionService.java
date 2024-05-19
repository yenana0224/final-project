package com.kh.hondimoyeong.companion.model.service;

import java.util.List;
import java.util.Map;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.companion.model.vo.Companion;
import com.kh.hondimoyeong.course.model.vo.Course;

public interface CompanionService {

	int selectListCount();

	List<Companion> selectAll(PageInfo pi);

	// 정렬
	int sortCompanionCount();

	List<Companion> sortCompanions();

	List<Companion> sortCompanion(PageInfo pi);

	List<Companion> sort(PageInfo pi);

	int increaseCount(int companionNo);

	Companion selectCompanion(int companionNo);

	int insert(Companion companion);

	// 검색
	int searchCount(Map<String, String> searchMap);

	List<Companion> search(Map<String, String> searchMap, PageInfo pi);

	int update(Companion companion);

	int delete(int companionNo);

	List<Course> selectCourse(Course course);


}
