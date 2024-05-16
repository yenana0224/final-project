package com.kh.hondimoyeong.member.model.repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.hondimoyeong.member.model.vo.Member;

@Repository
public class MemberRepository {
	

   // 로그인
   public Member login(SqlSessionTemplate sqlSession, Member member) {
      return sqlSession.selectOne("memberMapper.login", member);
   }

   
	// 회원가입
	public int insert(SqlSessionTemplate sqlSession, Member member) {
		return sqlSession.insert("memberMapper.insert", member);
	}
	
	//회원가입 아이디 체크
	public int idCheck(SqlSessionTemplate sqlSession, String checkId) {
		return sqlSession.selectOne("memberMapper.idCheck", checkId);
	}
	
	
	
}