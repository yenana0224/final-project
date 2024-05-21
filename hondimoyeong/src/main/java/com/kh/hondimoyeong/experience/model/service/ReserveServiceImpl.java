package com.kh.hondimoyeong.experience.model.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.experience.model.dao.ReserveRepository;
import com.kh.hondimoyeong.experience.model.vo.Experience;

@Service
public class ReserveServiceImpl  implements ReserveService{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private ReserveRepository reserveRepository;

	@Override
	public int insertReserve(Experience experience) {
		return reserveRepository.insertReserve(sqlSession, experience);
	}

	@Override
	public int insertHan(Experience experience) {
		return reserveRepository.insertHan(sqlSession, experience);
	}

	@Override
	public List<Experience> findAll() {
		return reserveRepository.findAll(sqlSession);
	}

	@Override
	public int selectListCount() {
		return reserveRepository.selectListCount(sqlSession);
	}

	@Override
	public List<Experience> selectList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return reserveRepository.selectList(sqlSession, rowBounds);
	}
	
	
	

}
