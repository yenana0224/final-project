package com.kh.hondimoyeong.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Member {
	
	private int userNo;  		//회원 고유번호
	private String userName;	//회원 이름
	private String userId;		//회원 아이디
	private String userPwd;		//회원 비밀번호
	private String phone;		//연락처
	private String email;		//이메일
	private String status;		//A:관리자/B:블랙리스트/C:사용자/D:탈퇴
	private String enrollDate;	//가입일
	private String modifyDate;	//상태변경일
	private String userContent;	//블랙리스트사유(회원메모)


	
}
