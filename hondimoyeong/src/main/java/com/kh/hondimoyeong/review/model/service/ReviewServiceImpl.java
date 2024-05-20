package com.kh.hondimoyeong.review.model.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.course.model.vo.Course;
import com.kh.hondimoyeong.review.model.dao.ReviewRepository;
import com.kh.hondimoyeong.review.model.vo.Review;
import com.kh.hondimoyeong.review.model.vo.ReviewComment;
import com.kh.hondimoyeong.review.model.vo.ReviewImg;

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

	@Override
	public int searchCount(Map<String, String> searchMap) {
		return reviewRepository.searchCount(sqlSession, searchMap);
	}

	@Override
	public List<Review> search(Map<String, String> searchMap, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return reviewRepository.search(sqlSession, searchMap, rowBounds);
	}

	@Override
	public int increaseCount(int reviewNo) {
		return reviewRepository.increaseCount(sqlSession, reviewNo);
	}

	@Override
	public Review selectReview(int reviewNo) {
		return reviewRepository.selectReview(sqlSession, reviewNo);
	}

	@Override
	public List<ReviewComment> selectComment(int reviewNo) {
		return reviewRepository.selectComment(sqlSession, reviewNo);
	}

	@Override
	public int insertComment(ReviewComment reviewComment) {
		return reviewRepository.insertComment(sqlSession, reviewComment);
	}

	@Override
	public List<ReviewImg> selectReviewImgs(int reviewNo) {
		return reviewRepository.selectReviewImgs(sqlSession, reviewNo);
	}

	@Override
	public List<ReviewComment> selectCommentCount() {
		return reviewRepository.selectCommentCount(sqlSession);
	}

	@Override
	public int insert(Review review) {
		return reviewRepository.insert(sqlSession, review);
	}

	@Override
	public int insertImg(ReviewImg reviewImg) {
		return reviewRepository.insertImg(sqlSession, reviewImg);
	}

	@Override
	public List<Course> selectCourse(Course course) {
		return reviewRepository.selectCourse(sqlSession, course);
	}

	@Override
	public int insertAndGetReviewNo(Review review) {
	    reviewRepository.insertAndGetReviewNo(sqlSession, review);
	    return review.getReviewNo();
	}





}
