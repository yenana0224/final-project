package com.kh.hondimoyeong.cs.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.hondimoyeong.cs.model.vo.Answer;
import com.kh.hondimoyeong.cs.model.vo.Faq;
import com.kh.hondimoyeong.cs.model.vo.Notice;
import com.kh.hondimoyeong.cs.model.vo.Question;

@Repository
public class NoticeRepository {

	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("noticeMapper.selectListCount");
	}

	public List<Notice> selectList(SqlSessionTemplate sqlSession, RowBounds rowBounds) {
		return sqlSession.selectList("noticeMapper.selectList", null, rowBounds);
	}

	public int increaseCount(SqlSessionTemplate sqlSession, int noticeNo) {
		return sqlSession.update("noticeMapper.increaseCount", noticeNo);
	}

	public Notice selectNotice(SqlSessionTemplate sqlSession, int noticeNo) {
		return sqlSession.selectOne("noticeMapper.selectNotice", noticeNo);
	}

	public int insert(SqlSessionTemplate sqlSession, Notice notice) {
		return sqlSession.insert("noticeMapper.insert", notice);
	}

	public int update(SqlSessionTemplate sqlSession, Notice notice) {
		return sqlSession.update("noticeMapper.update", notice);
	}

	public int delete(SqlSessionTemplate sqlSession, int noticeNo) {
		return sqlSession.update("noticeMapper.delete", noticeNo);
	}

	public List<Notice> search(SqlSessionTemplate sqlSession, String keyword, RowBounds rowBounds) {
		return sqlSession.selectList("noticeMapper.search", keyword, rowBounds);
	}

	public int searchCount(SqlSessionTemplate sqlSession, String keyword) {
		return sqlSession.selectOne("noticeMapper.searchCount", keyword);
	}

	public List<Faq> faqList(SqlSessionTemplate sqlSession) {
		return sqlSession.selectList("noticeMapper.faqList");
	}

}
