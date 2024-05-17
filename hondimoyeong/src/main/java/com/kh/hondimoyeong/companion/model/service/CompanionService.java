package com.kh.hondimoyeong.companion.model.service;

import java.util.List;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.companion.model.vo.Companion;

public interface CompanionService {

	int selectListCount();

	List<Companion> selectAll(PageInfo pi);

	// 정렬
	int sortCompanionCount();

	List<Companion> findCompanion();

	List<Companion> sortCompanion(PageInfo pi);

	List<Companion> sort(PageInfo pi);

	int increaseCount(int companionNo);

	Companion detailCompanion(int companionNo);


}
