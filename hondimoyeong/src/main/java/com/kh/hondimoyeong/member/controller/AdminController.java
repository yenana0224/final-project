package com.kh.hondimoyeong.member.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.common.template.Pagination;
import com.kh.hondimoyeong.experience.model.service.ReserveService;
import com.kh.hondimoyeong.experience.model.vo.Experience;

@Controller
public class AdminController {
	
	@Autowired
	private ReserveService reserveService;
	
	@GetMapping(value="saleMain", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String saleMain() {
		
		
		List<Experience> saleList =  reserveService.findAll();
		
		System.out.println(saleList);
		
		
		//model.addAttribute("list",reserveService.selectList(pi));
		
		//model.addAttribute("saleList",saleList);
		
		
		return new Gson().toJson(saleList);
		//return "experience/addMain";
	}
	
	@GetMapping(value="salesale", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String salesale(@RequestParam(value="page", defaultValue="1") int page) {
		

		PageInfo pi = Pagination.getPageInfo(reserveService.selectListCount(), page, 5, 5);
		System.out.println(pi);
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("list", reserveService.selectList(pi));
		
		return new Gson().toJson(pi);
	}


	
	
	
	
	
	
	

}
