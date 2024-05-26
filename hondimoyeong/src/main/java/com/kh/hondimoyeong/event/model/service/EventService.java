package com.kh.hondimoyeong.event.model.service;

import java.util.List;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.event.model.vo.Event;
import com.kh.hondimoyeong.event.model.vo.EventImg;

public interface EventService {

	int selectListCount();

	List<Event> allEvents(PageInfo pi);

	Event selectEvent(int eventNo);

	List<EventImg> selectEventImg(int eventNo);

	int increaseCount(int eventNo);

	int insert(Event event);

	int insertImg(EventImg eventImg);

	int update(Event event);

	int updateImg(EventImg eventImg);

	List<EventImg> selectEventImgs(int eventNo);

	int delete(int eventNo);

}
