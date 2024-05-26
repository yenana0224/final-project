package com.kh.hondimoyeong.event.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.common.template.Pagination;
import com.kh.hondimoyeong.event.model.service.EventService;

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
	public String detailEvent(@PathVariable int eventNo) {
		return "event/eventDetail";
	}

}
