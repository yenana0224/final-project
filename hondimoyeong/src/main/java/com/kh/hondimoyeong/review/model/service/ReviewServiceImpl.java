package com.kh.hondimoyeong.review.model.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.review.model.dao.ReviewRepository;
import com.kh.hondimoyeong.review.model.vo.Review;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewRepository reviewRepository;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int selectListCount() {
		return reviewRepository.selectListCount(sqlSession);
	}

	@Override
	public List<Review> selectList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return reviewRepository.selectList(sqlSession, rowBounds);
	}

}
