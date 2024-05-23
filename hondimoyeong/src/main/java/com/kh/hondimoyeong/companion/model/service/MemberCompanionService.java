package com.kh.hondimoyeong.companion.model.service;

import java.util.List;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.companion.model.vo.Companion;

public interface MemberCompanionService {
	
	int myListCount(int userNo);
	
	List<Companion> myList(int userNo, PageInfo pi);
	
	int myRequestCount(int userNo);
	
	List<Companion> myRequest(int userNo, PageInfo pi);

}
