package com.kh.hondimoyeong.cs.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.hondimoyeong.cs.model.vo.Notice;

@Repository
public class NoticeRepository {

	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("noticeMapper.selectListCount");
	}

	public List<Notice> selectList(SqlSessionTemplate sqlSession, RowBounds rowBounds) {
		return sqlSession.selectList("noticeMapper.selectList", rowBounds);
	}

}
