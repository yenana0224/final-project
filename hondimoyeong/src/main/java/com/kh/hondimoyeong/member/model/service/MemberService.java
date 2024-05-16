package com.kh.hondimoyeong.member.model.service;

import com.kh.hondimoyeong.member.model.vo.Member;

public interface MemberService {

   
   // 로그인(SELECT)
   Member login(Member member);
   
	// 회원가입(INSERT)
	int insert(Member member);

	// 아이디 중복체크
	int idCheck(String checkId);
}