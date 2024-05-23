package com.kh.hondimoyeong.experience.model.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.experience.model.dao.ReserveRepository;
import com.kh.hondimoyeong.experience.model.vo.Experience;
import com.kh.hondimoyeong.experience.model.vo.Exreview;

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

	@Override
	public Experience selectexperience(int experienceNo) {
		return reserveRepository.selectexperience(sqlSession, experienceNo);
	}

	@Override
	public List<Experience> excheck(int userNo) {
		return reserveRepository.excheck(sqlSession, userNo);
	}

	@Override
	public int insertreview(Exreview Exreview) {
		return reserveRepository.insertreview(sqlSession, Exreview);
	}

	@Override
	public List<Exreview> review() {
		return reserveRepository.review(sqlSession);
	}
	
	

}
