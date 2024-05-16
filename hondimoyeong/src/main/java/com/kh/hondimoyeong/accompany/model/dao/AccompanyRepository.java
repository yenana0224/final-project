package com.kh.hondimoyeong.accompany.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;

import com.kh.hondimoyeong.accompany.model.vo.Accompany;

public class AccompanyRepository {

	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("accompanyMapper.selectListCount");
	}

	public List<Accompany> selectAll(SqlSessionTemplate sqlSession, RowBounds rowBounds) {
		return sqlSession.selectList("accompanyMapper.selectAll", null, rowBounds);
	}

}
