package com.kh.hondimoyeong.experience.model.vo;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Experience {
	private int expericeNo;
	private String category;
	private String experienceDate;
	private String experienceTime;
	private int price;
	private int experiencePeople;
	private int userNo;
	

}
