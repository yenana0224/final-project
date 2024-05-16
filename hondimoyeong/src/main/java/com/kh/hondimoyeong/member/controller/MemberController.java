package com.kh.hondimoyeong.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.hondimoyeong.member.model.service.MemberService;
import com.kh.hondimoyeong.member.model.vo.Member;

@Controller
public class MemberController {
   
   @Autowired
   private MemberService memberService;
   
   @Autowired
   private BCryptPasswordEncoder bcryptPasswordEncoder; 
   
   
   // 로그인
   @RequestMapping("login.member")
   public ModelAndView login(Member member, HttpSession session, ModelAndView mv) {
      System.out.println(member);
      Member loginUser = memberService.login(member);
      
      if(loginUser != null && bcryptPasswordEncoder.matches(member.getUserPwd(), loginUser.getUserPwd())) {
         session.setAttribute("loginUser", loginUser);
         mv.setViewName("redirect:/");
      } else {

    	  mv.addObject("errorMsg", "아이디와 비밀번호를 다시 확인해 주세요.").setViewName("member/login");
      }
      return mv;
      
   }
   
   
   // 로그아웃
	@RequestMapping("logout.member")
	public String logoutMember(HttpSession session) {
		session.removeAttribute("loginUser");
		return "redirect:/";
	}   
   
   
	
	// 회원가입
	@RequestMapping("insert.member")
	public ModelAndView insertMember(Member member, ModelAndView mv, HttpSession session) {
		
		String encPwd = bcryptPasswordEncoder.encode(member.getUserPwd());
		member.setUserPwd(encPwd);
		
		if(memberService.insert(member) > 0) {
			session.setAttribute("alertMsg", "회원가입 성공!");
			mv.setViewName("redirect:/");
		}
		return mv;
	}
	

	
	@ResponseBody
	@GetMapping("idCheck.member")
	public String idCheck(String checkId) {
		//System.out.println(checkId);
		
		
		int count = memberService.idCheck(checkId);
		// NNNNN / NNNNY
		
		/*
		
		if(count > 0) { // 이미 존재하는 아이디
			return "NNNNN";
		} else {
			return "NNNNY";
		}
		*/
		//return "";
		
		//return count > 0 ? "NNNNN" : "NNNNY";
		return memberService.idCheck(checkId) > 0 ? "NNNNN" : "NNNNY";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
   
   
   

}