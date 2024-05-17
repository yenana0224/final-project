package com.kh.hondimoyeong.companion.model.service;

import java.util.List;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.companion.model.vo.Companion;

public interface CompanionService {

	int selectListCount();

	List<Companion> selectAll(PageInfo pi);

	List<Companion> findCompanion();

}
