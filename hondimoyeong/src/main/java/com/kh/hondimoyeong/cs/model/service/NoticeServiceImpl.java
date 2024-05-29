package com.kh.hondimoyeong.cs.model.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.cs.model.dao.NoticeMapper;
import com.kh.hondimoyeong.cs.model.vo.Faq;
import com.kh.hondimoyeong.cs.model.vo.Notice;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class NoticeServiceImpl implements NoticeService{
	
	private final NoticeMapper noticeMapper;
	
	@Override
	public int selectListCount() {
		return noticeMapper.selectListCount();
	}

	@Override
	public List<Notice> selectList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return noticeMapper.selectList(rowBounds);
	}

	@Override
	public int increaseCount(int noticeNo) {
		return noticeMapper.increaseCount(noticeNo);
	}

	@Override
	public Notice selectNotice(int noticeNo) {
		return noticeMapper.selectNotice(noticeNo);
	}

	@Override
	public int insert(Notice notice) {
		return noticeMapper.insert(notice);
	}

	@Override
	public int update(Notice notice) {
		return noticeMapper.update(notice);
	}

	@Override
	public int delete(int noticeNo) {
		return noticeMapper.delete(noticeNo);
	}

	@Override
	public List<Notice> search(String keyword, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return noticeMapper.search(keyword, rowBounds);
	}

	@Override
	public int selectSearchCount(String keyword) {
		return noticeMapper.searchCount(keyword);
	}

	// FAQ
	@Override
	public List<Faq> faqList() {
		return noticeMapper.faqList();
	}




	

}
