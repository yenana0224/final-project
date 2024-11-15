package com.kh.hondimoyeong.member.model.service;

import java.util.List;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.cs.model.vo.Customer;
import com.kh.hondimoyeong.experience.model.vo.Experience;
import com.kh.hondimoyeong.member.model.vo.Member;

public interface MemberService {

   
    Member login(Member member);
   
	int insert(Member member);

	int idCheck(String checkId);
	
    int emailCheck(String email);
 
    int phoneCheck(String phone);

	int update(Member member);
	
	int delete(Member member);
	
	int selectListCount(String category, String keyword, int userNo);
	
	List<Customer> selectList(PageInfo pi, String category, String keyword, int userNo);	

	int insertCustomer(Customer customer);
	
	Customer selectCustomerByNo(int customerNo);
	
	int reservationSelectListCount(int userNo);

	List<Experience> reservationSelectList(PageInfo pi, int userNo);
	
	int updateCustomer(Customer customer);
	
    int deleteCustomer(int customerNo);
	
    String findId(String userName, String phone, String email);
    
    int updatePwd(Member member);
    
    int findPwd(String userId, String userName, String email);
    
    
}