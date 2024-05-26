package com.kh.hondimoyeong.event.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

}
