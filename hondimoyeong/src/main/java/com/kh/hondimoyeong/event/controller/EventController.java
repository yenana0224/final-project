package com.kh.hondimoyeong.event.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.common.template.Pagination;
import com.kh.hondimoyeong.event.model.service.EventService;
import com.kh.hondimoyeong.event.model.vo.Event;
import com.kh.hondimoyeong.event.model.vo.EventImg;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("event")
@RequiredArgsConstructor
public class EventController {
	
	private final EventService eventService;
	
	@GetMapping
	public String allEvents(@RequestParam(value="page", defaultValue="1") int page, Model model) {
		PageInfo pi = Pagination.getPageInfo(eventService.selectListCount(), page, 9, 5);
		
		model.addAttribute("event", eventService.allEvents(pi));
		model.addAttribute("pageInfo", pi);
		
		return "event/eventList";
	}
	
	@GetMapping("/{eventNo}")
	public ModelAndView detailEvent(@PathVariable int eventNo, ModelAndView mv) {
		
		Event event = eventService.selectEvent(eventNo);
		if(event != null) {
			List<EventImg> eventImgs = eventService.selectEventImg(eventNo);
			event.setEventImgs(eventImgs);
			
			if(eventService.increaseCount(eventNo) > 0) {
				mv.addObject("event", event).setViewName("event/eventDetail");
			} else {
				mv.addObject("errorMsg", "조회 실패").setViewName("common/errorPage");
			}
		} else {
			mv.addObject("errorMsg", "찾을 수 없음").setViewName("common/errorPage");
		}
		return mv;
	}
	
	@GetMapping("/insertForm")
	public String insertForm(Model model, Event event) {
		return "event/eventInsertForm";
	}
	
	
	@PostMapping("/insert")
	public String insert(@ModelAttribute Event event,
					     @RequestParam("upfiles1") MultipartFile[] upfiles1,
					     @RequestParam("upfiles2") MultipartFile[] upfiles2,
					     HttpSession session, Model model) {
		
		eventService.insert(event);
		int eventNo = event.getEventNo();
		
		if(eventNo > 0) {
			List<MultipartFile> allFiles = new ArrayList<MultipartFile>();
			
			for(MultipartFile file : upfiles1) {
				if(!file.isEmpty()) {
					allFiles.add(file);
				}
			}
			
			for(MultipartFile file : upfiles2) {
				if(!file.isEmpty()) {
					allFiles.add(file);
				}
			}
			
			for(int i = 0; i < allFiles.size(); i++) {
				MultipartFile upfile = allFiles.get(i);
				String originName = upfile.getOriginalFilename();
				String changeName = saveFile(upfile, session);
				
				EventImg eventImg = new EventImg();
				eventImg.setEventNo(eventNo);
				eventImg.setOriginName(originName);
				eventImg.setChangeName(changeName);
				
				if(i < upfiles1.length) {
					eventImg.setFileLevel(1);
				} else {
					eventImg.setFileLevel(2);
				}
				
				eventService.insertImg(eventImg);
			}
			session.setAttribute("alertMsg", "성공");
			return "redirect:/event";
		} else {
			model.addAttribute("errorMsg", "실패");
			return "common/errorPage";
		}
	}
	
	
	public String saveFile(MultipartFile upfile, HttpSession session) {
	    String originName = upfile.getOriginalFilename();
	    String ext = originName.substring(originName.lastIndexOf("."));
	    String uuid = UUID.randomUUID().toString(); // UUID 생성
	    String changeName = uuid + ext; // UUID와 파일 확장자를 결합하여 고유한 파일 이름 생성
	    String savePath = session.getServletContext().getRealPath("/resources/eventFile/");
	    
	    try {
	        upfile.transferTo(new File(savePath + changeName));
	    } catch (IllegalStateException e) {
	        e.printStackTrace();
	    } catch (IOException e) {
	        e.printStackTrace();
	    }
	    return "resources/eventFile/" + changeName;
	}
	
	
	
	
	
	
	
	
	
	
	
	

}
