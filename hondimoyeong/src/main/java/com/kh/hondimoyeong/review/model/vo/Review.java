package com.kh.hondimoyeong.review.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class Review {
	
	private int reviewNo;
	private String reviewTitle;
	private String reviewContetn;
	private String createDate;
	private int count;
	private String status;
	private int reviewStar;
	private int userNo;

}
