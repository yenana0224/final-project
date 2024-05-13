package com.kh.hondimoyeong.cs.model.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.cs.model.dao.NoticeRepository;
import com.kh.hondimoyeong.cs.model.vo.Notice;

@Service
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Autowired
	private NoticeRepository noticeRepository;
	
	
	@Override
	public int selectListCount() {
		return noticeRepository.selectListCount(sqlSession);
	}

	@Override
	public List<Notice> selectList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return noticeRepository.selectList(sqlSession, rowBounds);
	}

	@Override
	public int increaseCount(int noticeNo) {
		return noticeRepository.increaseCount(sqlSession, noticeNo);
	}

	@Override
	public Notice selectNotice(int noticeNo) {
		return noticeRepository.selectNotice(sqlSession, noticeNo);
	}
	

}
