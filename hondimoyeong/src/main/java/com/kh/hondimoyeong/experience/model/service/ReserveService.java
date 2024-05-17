package com.kh.hondimoyeong.experience.model.service;

import com.kh.hondimoyeong.experience.model.vo.Experience;
import com.kh.hondimoyeong.experience.model.vo.Reserve;

public interface ReserveService {

	// 결제하기
	int insertReserve(Experience experience);
	
}
