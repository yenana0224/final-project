package com.kh.hondimoyeong.review.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.hondimoyeong.review.model.vo.Review;

@Repository
public class ReviewRepository {

	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("reviewMapper.selectListCount");
	}

	public List<Review> selectList(SqlSessionTemplate sqlSession, RowBounds rowBounds) {
		return sqlSession.selectList("reviewMapper.selectList", rowBounds);
	}

}
