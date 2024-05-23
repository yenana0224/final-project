package com.kh.hondimoyeong.review.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class ReviewComment {
	
	private int commentNo;
	private int reviewNo;
	private String commentContent;
	private String status;
	private String createDate;
	private int userNo;
	private String userName;
	

}
