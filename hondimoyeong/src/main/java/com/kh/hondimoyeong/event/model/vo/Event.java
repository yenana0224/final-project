package com.kh.hondimoyeong.event.model.vo;

import java.util.List;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class Event {
	
	private int eventNo;
	private String eventTitle;
	private String eventContent;
	private String createDate;
	private String status;
	private int count;
	private int userNo;
	private String changeName;
	private List<EventImg> eventImgs;
}
