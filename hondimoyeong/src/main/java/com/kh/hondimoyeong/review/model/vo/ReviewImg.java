package com.kh.hondimoyeong.review.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class ReviewImg {
	
	private int reviewImgNo;
	private int reviewNo;
	private String originName;
	private String changeName;

}
