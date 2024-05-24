package com.kh.hondimoyeong.companion.model.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.hondimoyeong.companion.model.vo.Companion;
import com.kh.hondimoyeong.member.model.vo.CompanionMember;

@Mapper
public interface MemberCompanionMapper {
	
	int myListCount(int userNo);
	
	List<Companion> myList(int userNo, RowBounds rowBounds);
	
	int myRequestCount(int userNo);
	
	List<Companion> myRequest(int userNo, RowBounds rowBounds);
	
	int accompanyRequest(HashMap<String, Integer>data);
	
	List<CompanionMember> appliList(int companionNo);
	
	int alram(int userNo);
}
