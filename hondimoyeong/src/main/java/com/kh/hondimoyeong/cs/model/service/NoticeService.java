package com.kh.hondimoyeong.cs.model.service;

import java.util.List;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.cs.model.vo.Notice;

public interface NoticeService {

	int selectListCount();

	List<Notice> selectList(PageInfo pi);

}
