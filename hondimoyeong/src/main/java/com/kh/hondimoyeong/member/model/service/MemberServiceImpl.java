package com.kh.hondimoyeong.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.hondimoyeong.member.model.repository.MemberRepository;
import com.kh.hondimoyeong.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {
   
   @Autowired
   private MemberRepository memberRepository;
   
   @Autowired
   private SqlSessionTemplate sqlSession; 
   
   
   // 로그인
   @Override
   public Member login(Member member) {
      return memberRepository.login(sqlSession, member);
   }

    // 회원가입
	@Override
	public int insert(Member member) {
		return memberRepository.insert(sqlSession, member);
	}
	
	// 회원가입 시 아이디 중복 체크
	@Override
	public int idCheck(String checkId) {
		return memberRepository.idCheck(sqlSession, checkId);
	}

	// 회원정보수정
	@Override
	public int update(Member member) {
		return memberRepository.update(sqlSession, member);
	}

	@Override
	public int delete(Member member) {
		return memberRepository.delete(sqlSession, member);
	}
	

	
	
	
	
	

}