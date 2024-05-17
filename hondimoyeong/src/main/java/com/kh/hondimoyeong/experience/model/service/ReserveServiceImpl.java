package com.kh.hondimoyeong.experience.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
	

}
