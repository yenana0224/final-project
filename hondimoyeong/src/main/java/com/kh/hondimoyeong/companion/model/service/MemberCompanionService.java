package com.kh.hondimoyeong.companion.model.service;

import java.util.HashMap;
import java.util.List;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.companion.model.vo.Companion;
import com.kh.hondimoyeong.member.model.vo.CompanionMember;

public interface MemberCompanionService {
	
	int myListCount(int userNo);
	
	List<Companion> myList(int userNo, PageInfo pi);
	
	int myRequestCount(int userNo);
	
	List<Companion> myRequest(int userNo, PageInfo pi);
	
	List<CompanionMember> appliList(HashMap<String, Integer>data);
	
	int accompanyRequest(HashMap<String, Integer>data);
	
	int alram(int userNo);

	int memberPermission(HashMap<String, Integer>data);
	
	int memberRejection(HashMap<String, Integer>data);
}
