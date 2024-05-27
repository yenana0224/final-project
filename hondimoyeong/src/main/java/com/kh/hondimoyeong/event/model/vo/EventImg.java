package com.kh.hondimoyeong.event.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class EventImg {
	
	private int eventImgNo;
	private int eventNo;
	private String originName;
	private String changeName;
	private int fileLevel;

}
