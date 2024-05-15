package com.kh.hondimoyeong.course.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
<<<<<<< Updated upstream
import org.springframework.web.multipart.MultipartFile;
=======
import org.springframework.web.multipart.MultipartHttpServletRequest;
>>>>>>> Stashed changes
import org.springframework.web.servlet.ModelAndView;

import com.kh.hondimoyeong.course.model.service.CourseServiceImpl;
import com.kh.hondimoyeong.course.model.vo.Course;
<<<<<<< Updated upstream
import com.kh.hondimoyeong.course.model.vo.CourseFile;
=======
>>>>>>> Stashed changes

@Controller
public class AdminCourseController {
	
	@Autowired
	private CourseServiceImpl courseService;
	
	@GetMapping("admin/course")
	public String allCourseList(Model model) {
		model.addAttribute("list", courseService.allCourseList());
		return "admin/course/courseList";
	}
	
	@GetMapping("admin/course/{courseIndex}")
	public ModelAndView courseDetail(@PathVariable int courseIndex,
									 ModelAndView mv) {
<<<<<<< Updated upstream
		
		mv.addObject("course", courseService.courseDetail(courseIndex)).setViewName("admin/course/courseDetail");
		return mv;
	}
	
	@GetMapping("admin/course/update/{courseIndex}")
	public String courseUpdateForm(@PathVariable int courseIndex,
									Model model) {
		
		model.addAttribute("course", courseService.courseDetail(courseIndex));
=======
	
		mv.addObject("course", courseService.selectCourse(courseIndex)).setViewName("admin/course/courseDetail");

		return mv;
	}

	@GetMapping("admin/course/update/{courseIndex}")
	public String courseUpdateForm(@PathVariable int courseIndex,
									Model model) {
		model.addAttribute("course", courseService.selectCourse(courseIndex));
>>>>>>> Stashed changes
		
		return "admin/course/courseUpdateForm";
	}
	
	@PostMapping("admin/course/update/updateCourse")
<<<<<<< Updated upstream
	public String courseUpdate(Course course,
							   MultipartFile stamp,
							   MultipartFile detailMap,
							   List<MultipartFile> photo,
							   HttpSession session) {
		
		int courseIndex = course.getCourseIndex();
		
		if(courseService.updateCourse(course) > 0) {
			
			if(!stamp.getOriginalFilename().equals("")) {
				CourseFile stampImg = new CourseFile();
				stampImg.setCourseIndex(courseIndex);
				stampImg.setOriginName(stamp.getOriginalFilename());
				stampImg.setChangeName(saveStamp(stamp, session));
				stampImg.setFileLevel(1);
				
				courseService.updateStamp(stampImg);
			}
			
			/*
			if(!detailMap.getOriginalFilename().equals("")) {
				CourseFile detailMap = new CourseFile();
			}
			*/
				
		}
		
		
		
		return "redirect:/admin/course/"+course.getCourseIndex();
	}
	
	public String saveStamp(MultipartFile stamp, HttpSession session) {
		
		String originName = stamp.getOriginalFilename();
		String ext = originName.substring(originName.lastIndexOf("."));
		String currentTime = new SimpleDateFormat("yyyyMMdd").format(new Date());
		int randomNum = (int)Math.random() * 90000 + 10000;
		
		String changeName = currentTime + randomNum + ext;
		String savePath = session.getServletContext().getRealPath("/resources/course/stamp");
		
		
		try {
			stamp.transferTo(new File(savePath + changeName));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		return "resource/course/stamp/" + changeName;
	}
	
	
=======
	public void courseUpdate(Course course,
							 MultipartHttpServletRequest multiRequest) {
		System.out.println(course.getContent());
		System.out.println(image);

	}
>>>>>>> Stashed changes

}
