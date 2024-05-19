package com.kh.hondimoyeong.review.model.service;

import java.util.List;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.review.model.vo.Review;

public interface ReviewService {

	int selectListCount();

	List<Review> selectList(PageInfo pi);

}
