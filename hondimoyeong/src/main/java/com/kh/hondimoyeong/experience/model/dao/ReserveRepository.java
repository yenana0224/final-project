package com.kh.hondimoyeong.experience.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.hondimoyeong.experience.model.vo.Experience;

@Repository
public class ReserveRepository {
	
	
	public int insertReserve(SqlSessionTemplate sqlSession, Experience experience) {
		return sqlSession.insert("experienceMapper.insertReserve", experience);
	}
	
	
	public int insertHan(SqlSessionTemplate sqlSession, Experience experience) {
		return sqlSession.insert("experienceMapper.insertHan", experience);
	}
	
	
	public List<Experience> findAll(SqlSessionTemplate sqlSession) {
		return sqlSession.selectList("experienceMapper.findAll");
	}
	
	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("experienceMapper.selectListCount");
	}
	
	public List<Experience> selectList(SqlSessionTemplate sqlSession, RowBounds rowBounds) {
		return sqlSession.selectList("experienceMapper.selectList", null, rowBounds);
	}
	
	
	public Experience selectexperience(SqlSessionTemplate sqlSession, int experienceNo) {
		return sqlSession.selectOne("experienceMapper.selectexperience", experienceNo);
	}
}
