package com.kh.hondimoyeong.cs.model.service;

import java.util.List;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.cs.model.vo.Faq;
import com.kh.hondimoyeong.cs.model.vo.Notice;

public interface NoticeService {

	int selectListCount();

	List<Notice> selectList(PageInfo pi);

	int increaseCount(int noticeNo);

	Notice selectNotice(int noticeNo);

	int insert(Notice notice);

	int update(Notice notice);

	int delete(int noticeNo);

	List<Notice> search(String keyword, PageInfo pi);

	int selectSearchCount(String keyword);

	// FAQ
	List<Faq> faqList();



}
