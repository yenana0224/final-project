package com.kh.hondimoyeong.course.controller;

import java.net.URI;
import java.net.URLEncoder;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import lombok.RequiredArgsConstructor;

@Controller
public class AjaxCourseMapController {
	
	private String restApiKey = "d824f9be96e65ddd8c317aa97d8d3921";
	
	@GetMapping(value="courseMap", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String MapData(String query) throws Exception  {
		
		//헤더
		HttpHeaders header = new HttpHeaders();
		header.add("Authorization", "KakaoAK " + restApiKey);
		
		//키워드 인코딩
		String encode = URLEncoder.encode(query,"UTF-8");
		
		//요청 url
		String address = "https://dapi.kakao.com/v2/local/search/keyword.json?page=1&size=1&query=" + encode;
				
		HttpEntity<String> entity = new HttpEntity<String>("parameters", header);
		
		URI uri = new URI(address);
		
		ResponseEntity<String> responseEntity = new RestTemplate().exchange(uri, HttpMethod.GET, entity, String.class);
		
		JSONObject body = (JSONObject) new JSONParser().parse(responseEntity.getBody().toString());
		JSONArray documents = (JSONArray) body.get("documents");
		
		return documents.toJSONString();
	}
	

}
