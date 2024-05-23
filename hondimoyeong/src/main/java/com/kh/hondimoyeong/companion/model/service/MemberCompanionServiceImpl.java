package com.kh.hondimoyeong.companion.model.service;

import java.util.List;

import com.kh.hondimoyeong.companion.model.dao.MemberCompanionRepository;
import com.kh.hondimoyeong.companion.model.vo.Companion;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class MemberCompanionServiceImpl implements MemberCompanionService {
	
	private final MemberCompanionRepository companionRepository;

	@Override
	public List<Companion> myList(int userNo) {
		return companionRepository.myList(userNo);
	}

}
