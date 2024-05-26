package com.kh.hondimoyeong.event.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.hondimoyeong.event.model.vo.Event;

@Mapper
public interface EventMapper {

	int selectListCount();

	List<Event> allEvents(RowBounds rowBounds);

}
