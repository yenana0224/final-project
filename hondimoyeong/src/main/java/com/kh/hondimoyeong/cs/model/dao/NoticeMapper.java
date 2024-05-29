package com.kh.hondimoyeong.cs.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.hondimoyeong.cs.model.vo.Faq;
import com.kh.hondimoyeong.cs.model.vo.Notice;

@Mapper
public interface NoticeMapper {

	int selectListCount();

	List<Notice> selectList(RowBounds rowBounds);

	int increaseCount(int noticeNo);

	Notice selectNotice(int noticeNo);

	int insert(Notice notice);

	int update(Notice notice);

	int delete(int noticeNo);

	List<Notice> search(String keyword, RowBounds rowBounds);

	int searchCount(String keyword);

	List<Faq> faqList();

}
