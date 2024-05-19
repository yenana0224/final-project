package com.kh.hondimoyeong.review.model.vo;

import java.util.List;

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
	private int courseNo;
	private String courseName;
	private String reviewTitle;
	private String reviewContent;
	private String createDate;
	private int count;
	private String status;
	private int reviewStar;
	private int userNo;
	private String userName;
	
	private List<ReviewImg> reviewImgs;

}
