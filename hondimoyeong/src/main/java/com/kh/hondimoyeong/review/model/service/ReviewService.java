package com.kh.hondimoyeong.review.model.service;

import java.util.List;
import java.util.Map;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.course.model.vo.Course;
import com.kh.hondimoyeong.review.model.vo.Review;
import com.kh.hondimoyeong.review.model.vo.ReviewComment;
import com.kh.hondimoyeong.review.model.vo.ReviewImg;

public interface ReviewService {

	int selectListCount();

	List<Review> selectList(PageInfo pi);

	int searchCount(Map<String, String> searchMap);

	List<Review> search(Map<String, String> searchMap, PageInfo pi);

	int increaseCount(int reviewNo);

	Review selectReview(int reviewNo);

	List<ReviewComment> selectComment(int reviewNo);

	int insertComment(ReviewComment reviewComment);

	List<ReviewImg> selectReviewImgs(int reviewNo);

	List<ReviewComment> selectCommentCount();

	int insert(Review review);

	int insertImg(ReviewImg reviewImg);

	List<Course> selectCourse(Course course);



}
