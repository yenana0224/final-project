package com.kh.hondimoyeong.event.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EventController {
	
	@RequestMapping("event")
	public String event() {
		return "event/eventList";
	}
	
	@RequestMapping("detail.ev")
	public String detailEvent() {
		return "event/eventDetail";
	}

}
