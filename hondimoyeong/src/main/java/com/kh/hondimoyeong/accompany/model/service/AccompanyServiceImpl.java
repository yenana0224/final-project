package com.kh.hondimoyeong.accompany.model.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kh.hondimoyeong.accompany.model.dao.AccompanyRepository;
import com.kh.hondimoyeong.accompany.model.vo.Accompany;
import com.kh.hondimoyeong.common.model.vo.PageInfo;

public class AccompanyServiceImpl implements AccompanyService {


	@Autowired
	private AccompanyRepository accompanyRepository;
		
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int selectListCount() {
		return accompanyRepository.selectListCount(sqlSession);
	}

	@Override
	public List<Accompany> selectAll(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return accompanyRepository.selectAll(sqlSession, rowBounds);
	}

}
