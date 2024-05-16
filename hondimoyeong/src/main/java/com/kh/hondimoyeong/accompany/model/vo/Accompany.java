package com.kh.hondimoyeong.accompany.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class Accompany {
	
	private int accompanyNo;
	private int userNo;
	private String userName;
	private int courseNo;
	private String courseName;
	private String accompanyDate;
	private String accompanyTitle;
	private String accompanyContent;
	private String createDate;
	private int count;
	private String status;
	private int accompanyPeople;
	
	private int accompanyNum; // 신청인원

}
