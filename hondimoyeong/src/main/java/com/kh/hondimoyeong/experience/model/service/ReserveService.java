package com.kh.hondimoyeong.experience.model.service;

import com.kh.hondimoyeong.experience.model.vo.Experience;
import com.kh.hondimoyeong.experience.model.vo.Reserve;

public interface ReserveService {

	// 결제하기
	int insertReserve(Experience experience);
	
	// 한라산 결제하기(무료)
	int insertHan(Experience experience);
	
}
