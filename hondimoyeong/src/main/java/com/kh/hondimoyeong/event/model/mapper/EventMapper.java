package com.kh.hondimoyeong.event.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.hondimoyeong.event.model.vo.Event;
import com.kh.hondimoyeong.event.model.vo.EventImg;

@Mapper
public interface EventMapper {

	int selectListCount();

	List<Event> allEvents(RowBounds rowBounds);

	Event selectEvent(int eventNo);

	List<EventImg> selectEventImg(int eventNo);

	int increaseCount(int eventNo);

	int insert(Event event);

	int insertImg(EventImg eventImg);

}
