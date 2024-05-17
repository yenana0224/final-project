package com.kh.hondimoyeong.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberViewController {
	
	// 화면
	
	
	// 로그인
	@RequestMapping("login")
	public String login() {
		return "member/login";
	}

	// 회원가입폼
	@RequestMapping("insertForm")
	public String insertForm() {
		return "member/insertForm";
	}	
	
	// 아이디 찾기 폼
	@RequestMapping("searchIdForm")
	public String searchIdForm() {
		return "member/searchIdForm";
	}
	
	// 비밀번호 찾기 폼
	@RequestMapping("searchPwdForm")
	public String searchPwdForm() {
		return "member/searchPwdForm";
	}
	
	
	// 마이페이지 메인
	@RequestMapping("myPage")
	public String myPage() {
		return "member/myPage";
	}
	
	// 마이페이지 - 개인정보수정
	@RequestMapping("myPageUpdate")
	public String myPageUpdate() {
		return "member/myPageUpdate";
	}
	
	
	// 마이페이지 - 예매내역
	@RequestMapping("reservationList")
	public String reservationList() {
		return "member/reservationList";
	}
	
	
	// 마이페이지 - 내가 쓴 글 게시판 리스트
	@RequestMapping("boardList")
	public String boardList() {
		return "member/boardList";
	}
	
	
	// 마이페이지 - 글 등록 폼
	@RequestMapping("boardEnrollForm")
	public String boardEnrollForm() {
		return "member/boardEnrollForm";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
