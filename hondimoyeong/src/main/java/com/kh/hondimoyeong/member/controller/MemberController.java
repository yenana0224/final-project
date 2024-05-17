package com.kh.hondimoyeong.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	

	// 회원가입 시 아이디 중복 체크
	@ResponseBody
	@GetMapping("idCheck.member")
	public String idCheck(String checkId) {
		int count = memberService.idCheck(checkId);
		return memberService.idCheck(checkId) > 0 ? "NNNNN" : "NNNNY";
	}
	
	
	
	// 회원정보수정
	@RequestMapping("update.member")
	public String update(Member member, Model model, HttpSession session) {
		if(memberService.update(member) > 0) {
			
			session.setAttribute("loginUser", memberService.login(member));
			
			//session에 일회성 알람문구 띄워주기
			session.setAttribute("alertMsg", "정보 수정에 성공했습니다!");
			return "redirect:myPage";
			
		} else { 
			model.addAttribute("errorMsg", "정보 수정에 실패했습니다.");
			return "common/errorPage";
		}
	}
	
	
	// 회원탈퇴
	@RequestMapping("delete.member")
	public String delete(String userPwd, HttpSession session) {
		
		Member loginUser = ((Member)session.getAttribute("loginUser"));
		
		String encPwd = loginUser.getUserPwd();
		
		if(bcryptPasswordEncoder.matches(userPwd, encPwd)) {
			
			if(memberService.delete(loginUser) > 0 ) {
				session.removeAttribute("loginUser");
				session.setAttribute("alertMsg", "탈퇴성공");
				return "redirect:/";
			} else {
				session.setAttribute("alertMsg", "탈퇴실패");
				return "common/errorPage";
			}
		} else {
			session.setAttribute("alertMsg", "비밀번호가 일치하지 않습니다.");
			return "redirect:mypage.member";
		}
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
   
   
   

}