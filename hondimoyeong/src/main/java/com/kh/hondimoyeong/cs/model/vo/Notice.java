package com.kh.hondimoyeong.cs.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class Notice {
	
	private int noticeNo;
	private String noticeTitle;
	private String noticeContent;
	private String createDate;
	private int count;
	private String status;
	private int userNo;

}
