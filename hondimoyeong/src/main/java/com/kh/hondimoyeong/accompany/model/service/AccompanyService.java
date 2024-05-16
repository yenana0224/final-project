package com.kh.hondimoyeong.accompany.model.service;

import java.util.List;

import com.google.gson.JsonElement;
import com.kh.hondimoyeong.accompany.model.vo.Accompany;
import com.kh.hondimoyeong.common.model.vo.PageInfo;

public interface AccompanyService {

	int selectListCount();

	List<Accompany> selectAll(PageInfo pi);

	List<Accompany> findRecruiting();

}
