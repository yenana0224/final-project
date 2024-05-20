package com.kh.hondimoyeong.experience.model.dao;

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
	
	
	

}
