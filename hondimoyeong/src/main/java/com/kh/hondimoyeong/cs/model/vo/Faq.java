package com.kh.hondimoyeong.cs.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class Faq {
	
	private int questionNo;
	private String questionContent;
	private String createDate;
	private String status;
	private int userNo;
	
	private int questionAnswerNo;
	private String answerContent;

}
