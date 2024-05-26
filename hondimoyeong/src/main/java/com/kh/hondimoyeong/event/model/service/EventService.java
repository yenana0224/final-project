package com.kh.hondimoyeong.event.model.service;

import java.util.List;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.event.model.vo.Event;

public interface EventService {

	int selectListCount();

	List<Event> allEvents(PageInfo pi);

}
