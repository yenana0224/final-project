package com.kh.hondimoyeong.experience.model.vo;

import java.sql.Date;

import lombok.Data;
import lombok.Getter;
import lombok.ToString;

@Data
@ToString
@Getter
public class Reserve {
	 private String tid; // 결제 고유 번호
	    private String next_redirect_pc_url; // web - 받는 결제 페이지
	    //private Date created_at;

}
