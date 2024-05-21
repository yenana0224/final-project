package com.kh.hondimoyeong.experience.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.experience.model.vo.Experience;

public interface ReserveService {

	// 결제하기
	int insertReserve(Experience experience);
	
	// 한라산 결제하기(무료)
	int insertHan(Experience experience);
	
	// 매출 전체조회
	List <Experience> findAll();
	
	// 매출 페이징
	int selectListCount();
	
	// 체험 목록 조회
	List<Experience> selectList(PageInfo pi);
	
	// 체험 상세 조회
	Experience selectexperience(int experienceNo);

}
