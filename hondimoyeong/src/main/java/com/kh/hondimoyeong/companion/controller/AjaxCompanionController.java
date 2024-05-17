package com.kh.hondimoyeong.companion.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.kh.hondimoyeong.companion.model.service.CompanionService;
import com.kh.hondimoyeong.companion.model.vo.Companion;

@RestController
@RequestMapping(value="companions", produces="application/json; charset=UTF-8")
public class AjaxCompanionController {
	
	@Autowired
	CompanionService companionsService;
	
	@GetMapping
	public String findCompanion(Model model) {
	    List<Companion> findCompanion = companionsService.findCompanion();
	    String companions = new Gson().toJson(findCompanion);
	    model.addAttribute("companions", companions);
		
		return "companions/companionsList";
	}
}
