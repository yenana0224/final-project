package com.kh.hondimoyeong.companion.model.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.companion.model.dao.MemberCompanionMapper;
import com.kh.hondimoyeong.companion.model.vo.Companion;
import com.kh.hondimoyeong.member.model.vo.CompanionMember;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberCompanionServiceImpl implements MemberCompanionService {
	
	private final MemberCompanionMapper companionMapper;

	@Override
	public int myListCount(int userNo) {
		return companionMapper.myListCount(userNo);
	}

	@Override
	public List<Companion> myList(int userNo, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return companionMapper.myList(userNo, rowBounds);
	}

	@Override
	public int myRequestCount(int userNo) {
		return companionMapper.myRequestCount(userNo);
	}

	@Override
	public List<Companion> myRequest(int userNo, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return companionMapper.myRequest(userNo, rowBounds);
	}

	@Override
	public List<CompanionMember> appliList(int companionNo) {
		return companionMapper.appliList(companionNo);
	}

	@Override
	public int accompanyRequest(HashMap<String, Integer> data) {
		return companionMapper.accompanyRequest(data);
	}

}
