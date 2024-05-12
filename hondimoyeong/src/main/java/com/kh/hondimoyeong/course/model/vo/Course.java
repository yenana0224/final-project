package com.kh.hondimoyeong.course.model.vo;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Course {

	private int courseIndex;
	private String courseNo;
	private String courseName;
	private String startEnd;
	private String takeTime;
	private String distance;
	private String content;
	private List<CourseFile> files;

}
