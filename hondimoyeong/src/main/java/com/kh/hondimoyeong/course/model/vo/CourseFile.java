package com.kh.hondimoyeong.course.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CourseFile {

	private int fileNo;
	private int courseIndex;
	private String originName;
	private String changeName;
	private int fileLevel;
	
}
