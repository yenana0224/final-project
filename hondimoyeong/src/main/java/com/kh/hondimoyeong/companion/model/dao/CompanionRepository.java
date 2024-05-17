package com.kh.hondimoyeong.companion.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.hondimoyeong.companion.model.vo.Companion;

@Repository
public class CompanionRepository {

	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("companionMapper.selectListCount");
	}

	public List<Companion> selectAll(SqlSessionTemplate sqlSession, RowBounds rowBounds) {
		return sqlSession.selectList("companionMapper.selectAll", null, rowBounds);
	}

	public List<Companion> findCompanion(SqlSessionTemplate sqlSession) {
		return sqlSession.selectList("companionMapper.findCompanion");
	}

	public int sortCompanionCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("companionMapper.sortCompanionCount");
	}

	public List<Companion> sort(SqlSessionTemplate sqlSession, RowBounds rowBounds) {
		return sqlSession.selectList("companionMapper.findCompanion", null, rowBounds);
	}

}
