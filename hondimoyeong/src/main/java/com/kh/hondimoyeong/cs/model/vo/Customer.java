package com.kh.hondimoyeong.cs.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter 
@ToString 
@NoArgsConstructor
public class Customer {

	private int customerNo;			// 고객센터번호
	private String customerTitle;	// 제목
	private String customerContent;	// 내용
	private String createDate;		// 등록일
	private int count;				// 조회수
	private String status;			// 삭제여부('Y' / 'N')
	private int categoryNo;			// 카테고리(0-전체 / 1-문의 / 2-신고)
	private int userNo;				// 회원번호
	
	private String userName;		// 회원명
}
