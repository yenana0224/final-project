package com.kh.hondimoyeong.experience.model.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Exreview {
	
	private int experienceRevieweNo;
	private int experienceNo;
	private String experienceCategory;
	private String experienceContent;
	private int userNo;
	private String userId;
	
}
