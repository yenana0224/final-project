package com.kh.hondimoyeong.companion.model.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.companion.model.dao.CompanionRepository;
import com.kh.hondimoyeong.companion.model.vo.Companion;
import com.kh.hondimoyeong.companion.model.vo.CompanionReply;
import com.kh.hondimoyeong.course.model.vo.Course;


@Service
public class CompanionServiceImpl implements CompanionService {


	@Autowired
	private CompanionRepository companionRepository;
		
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int selectListCount() {
		return companionRepository.selectListCount(sqlSession);
	}

	@Override
	public List<Companion> selectAll(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return companionRepository.selectAll(sqlSession, rowBounds);
	}

	@Override
	public List<Companion> sortCompanions() {
		return companionRepository.sortCompanions(sqlSession);
	}

	@Override
	public int sortCompanionCount() {
		return companionRepository.sortCompanionCount(sqlSession);
	}

	@Override
	public List<Companion> sortCompanion(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return companionRepository.sort(sqlSession, rowBounds);
	}

	@Override
	public List<Companion> sort(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return companionRepository.sort(sqlSession, rowBounds);
	}

	@Override
	public int increaseCount(int companionNo) {
		return companionRepository.increaseCount(sqlSession, companionNo);
	}

	@Override
	public Companion selectCompanion(int companionNo) {
		return companionRepository.selectCompanion(sqlSession, companionNo);
	}

	@Override
	public int insert(Companion companion) {
		
		int result = 1;

		if(companionRepository.insert(sqlSession, companion) > 0) {
			result = result * companionRepository.insertBridge(sqlSession, companion);
		}

		return result;
	}

	@Override
	public int searchCount(Map<String, String> searchMap) {
		return companionRepository.searchCount(sqlSession, searchMap);
	}

	@Override
	public List<Companion> search(Map<String, String> searchMap, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return companionRepository.search(sqlSession, searchMap, rowBounds);
	}

	@Override
	public int update(Companion companion) {
		return companionRepository.update(sqlSession, companion);
	}

	@Override
	public int delete(int companionNo) {
		return companionRepository.delete(sqlSession, companionNo);
	}

	@Override
	public List<Course> selectCourse(Course course) {
		return companionRepository.selectCourse(sqlSession, course);
	}

	public List<CompanionReply> selectReply(int companionNo) {
		return companionRepository.selectReply(sqlSession, companionNo);
	}

	@Override
	public int insertReply(CompanionReply companionReply) {
		return companionRepository.insertReply(sqlSession, companionReply);
	}

	
}
