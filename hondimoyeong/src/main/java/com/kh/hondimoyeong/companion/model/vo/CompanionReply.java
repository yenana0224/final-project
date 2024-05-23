package com.kh.hondimoyeong.companion.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class CompanionReply {
	
	private int replyNo;
	private String replyContent;
	private String createDate; 
	private int companionNo;
	private int userNo;
	private String status;
	private String userName;
}
