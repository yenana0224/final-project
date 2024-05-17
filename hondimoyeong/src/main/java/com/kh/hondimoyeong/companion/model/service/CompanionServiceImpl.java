package com.kh.hondimoyeong.companion.model.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.companion.model.dao.CompanionRepository;
import com.kh.hondimoyeong.companion.model.vo.Companion;


@Service
public class CompanionServiceImpl implements CompanionService {


	@Autowired
	private CompanionRepository companionRepository;
		
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int selectListCount() {
		return companionRepository.selectListCount(sqlSession);
	}

	@Override
	public List<Companion> selectAll(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return companionRepository.selectAll(sqlSession, rowBounds);
	}

	@Override
	public List<Companion> findCompanion() {
		return companionRepository.findCompanion(sqlSession);
	}
	


}
