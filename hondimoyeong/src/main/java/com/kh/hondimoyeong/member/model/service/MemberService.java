package com.kh.hondimoyeong.member.model.service;

import java.util.List;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.cs.model.vo.Customer;
import com.kh.hondimoyeong.member.model.vo.Member;

public interface MemberService {

   
    Member login(Member member);
   
	int insert(Member member);

	int idCheck(String checkId);
	
	int update(Member member);
	
	int delete(Member member);
	
	int selectListCount(String category, String keyword, int userNo);
	
	List<Customer> selectList(PageInfo pi, String category, String keyword, int userNo);	

	
	
	
}