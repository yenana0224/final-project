package com.kh.hondimoyeong.member.model.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.cs.model.vo.Customer;
import com.kh.hondimoyeong.member.model.repository.MemberRepository;
import com.kh.hondimoyeong.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {
   
   @Autowired
   private MemberRepository memberRepository;
   
   @Autowired
   private SqlSessionTemplate sqlSession; 
   
   
   @Override
   public Member login(Member member) {
      return memberRepository.login(sqlSession, member);
   }

	@Override
	public int insert(Member member) {
		return memberRepository.insert(sqlSession, member);
	}
	
	@Override
	public int idCheck(String checkId) {
		return memberRepository.idCheck(sqlSession, checkId);
	}

	@Override
	public int update(Member member) {
		return memberRepository.update(sqlSession, member);
	}

	@Override
	public int delete(Member member) {
		return memberRepository.delete(sqlSession, member);
	}

	@Override
	public int selectListCount(String category, String keyword, int userNo) {
		return memberRepository.selectListCount(sqlSession, category, keyword, userNo);
	}
	
	@Override
	public List<Customer> selectList(PageInfo pi, String category, String keyword, int userNo) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return memberRepository.selectList(sqlSession, rowBounds, category, keyword, userNo);
	}

	@Override
	public int insertCustomer(Customer customer) {
		return memberRepository.insertCustomer(sqlSession, customer);
	}
	
	

	

}