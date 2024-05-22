package com.kh.hondimoyeong.companion.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class Companion {
	
	private int companionNo;
	private int userNo;
	private String userName;
	private int courseNo;
	private String courseName;
	private String companionDate;
	private String companionTitle;
	private String companionContent;
	private String createDate;
	private int count;
	private String status;
	private int companionPeople;
	private int replyCount;

	private int companionNum; // 신청인원

}
