package com.kh.hondimoyeong.member.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.common.template.Pagination;
import com.kh.hondimoyeong.cs.model.vo.Customer;
import com.kh.hondimoyeong.member.model.service.MemberService;
import com.kh.hondimoyeong.member.model.vo.Member;

@Controller
public class MemberController {
   
   @Autowired
   private MemberService memberService;
   
   @Autowired
   private BCryptPasswordEncoder bcryptPasswordEncoder; 
   
   
   @PostMapping("login.member")
   public ModelAndView login(Member member, HttpSession session, ModelAndView mv) {
      Member loginUser = memberService.login(member);
      
      if(loginUser != null && bcryptPasswordEncoder.matches(member.getUserPwd(), loginUser.getUserPwd())) {
         session.setAttribute("loginUser", loginUser);
         mv.setViewName("redirect:/");
         
         if(loginUser.getStatus().equals("A")) {
        	 
        	 
        	 mv.setViewName("redirect:saleMain");
        	 
				//mv.setViewName("common/adminMain");
         }
         
      } else {
    	  mv.addObject("errorMsg", "아이디와 비밀번호를 다시 확인해주세요.").setViewName("member/login");
      }
      return mv;
   }
   
	@GetMapping("logout.member")
	public String logoutMember(HttpSession session) {
		session.removeAttribute("loginUser");
		return "redirect:/";
	}   
	
	@PostMapping("insert.member")
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
		int count = memberService.idCheck(checkId);
		return memberService.idCheck(checkId) > 0 ? "NNNNN" : "NNNNY";
	}
	
	
    //이메일 중복체크
    @ResponseBody
    @GetMapping("emailCheck.member")
    public String emailCheck(String email) {
        int count = memberService.emailCheck(email);
        return count > 0 ? "NNNNN" : "NNNNY";
    }

    //연락처 중복체크
    @ResponseBody
    @GetMapping("phoneCheck.member")
    public String phoneCheck(String phone) {
        int count = memberService.phoneCheck(phone);
        return count > 0 ? "NNNNN" : "NNNNY";
    }

	
	@PostMapping("update.member")
	public String update(Member member, Model model, HttpSession session) {
		if(memberService.update(member) > 0) {
			session.setAttribute("loginUser", memberService.login(member));
			session.setAttribute("alertMsg", "정보 수정에 성공했습니다!");
			return "redirect:myPage";
		} else { 
			model.addAttribute("errorMsg", "정보 수정에 실패했습니다.");
			return "common/errorPage";
		}
	}
	
	@PostMapping("delete.member")
	public String delete(String userPwd, HttpSession session) {
		
		Member loginUser = ((Member)session.getAttribute("loginUser"));
		String encPwd = loginUser.getUserPwd();
		if(bcryptPasswordEncoder.matches(userPwd, encPwd)) {
			if(memberService.delete(loginUser) > 0 ) {
				session.removeAttribute("loginUser");
				session.setAttribute("alertMsg", "회원 탈퇴가 성공적으로 완료되었습니다.");
				return "redirect:/";
			} else {
				session.setAttribute("alertMsg", "회원 탈퇴에 실패했습니다. 비밀번호를 확인해주세요.");
				return "common/errorPage";
			}
		} else {
			session.setAttribute("alertMsg", "비밀번호가 일치하지 않습니다.");
			return "redirect:mypage.member";
		}
	}
	
	@ResponseBody
	@GetMapping(value = "list.customerData", produces = "application/json; charset=UTF-8")
	public String selectAll(@RequestParam(value = "page", defaultValue = "1") int page, String category, String searchTitle, HttpSession session) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		PageInfo pi = Pagination.getPageInfo(memberService.selectListCount(category, searchTitle, loginUser.getUserNo()), page, 10, 10);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("customer", memberService.selectList(pi, category, searchTitle, loginUser.getUserNo()));
		map.put("pageInfo", pi);
		Gson gson = new Gson();
		String jsonResponse = gson.toJson(map);
		return jsonResponse;
	}
	

	@PostMapping("insert.customer")
	public String insertCustomer(Customer customer, Model model, HttpSession session) {
	    
		Member loginUser = (Member) session.getAttribute("loginUser");
		customer.setUserNo(loginUser.getUserNo());

		if(memberService.insertCustomer(customer) > 0) {
	        session.setAttribute("alertMsg", "게시글 작성에 성공했습니다!");
	        return "redirect:list.customerView";
	    } else {
	        model.addAttribute("errorMsg", "게시글 작성에 실패했습니다.");
	        return "common/errorPage";
	    }
	}
	

    @GetMapping("detail.customer")
    public String detailCustomer(@RequestParam("customerNo") int customerNo, Model model) {
        Customer customer = memberService.selectCustomerByNo(customerNo);
        if (customer != null) {
            model.addAttribute("customer", customer);
            return "member/customerDetail";
        } else {
            model.addAttribute("errorMsg", "게시글 조회에 실패했습니다.");
            return "common/errorPage";
        }
    }

	
	
    @ResponseBody
    @GetMapping(value = "list.reservationData", produces = "application/json; charset=UTF-8")
    public String reservationSelectAll(@RequestParam(value = "page", defaultValue = "1") int page, HttpSession session) {
        Member loginUser = (Member) session.getAttribute("loginUser");
        PageInfo pi = Pagination.getPageInfo(memberService.reservationSelectListCount(loginUser.getUserNo()), page, 10, 10);
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("experience", memberService.reservationSelectList(pi, loginUser.getUserNo()));
        map.put("pageInfo", pi);
        Gson gson = new Gson();
        String jsonResponse = gson.toJson(map);
        return jsonResponse;
    }

	
	@PostMapping("update.customer")
	public String updateCustomer(Customer customer, Model model, HttpSession session) {
		if(memberService.updateCustomer(customer) > 0) {
			session.setAttribute("alertMsg", "게시글 수정에 성공했습니다!");
			return "redirect:detail.customer?customerNo=" + customer.getCustomerNo();
		} else { 
			model.addAttribute("errorMsg", "게시글 수정에 실패했습니다.");
			return "common/errorPage";
		}
	}
	

	@GetMapping("delete.customer")
    public String deleteCustomer(int customerNo, HttpSession session) {
       if(memberService.deleteCustomer(customerNo) > 0) {
          session.setAttribute("alertMsg", "게시물 삭제에 성공했습니다!");
          return "redirect:list.customerView";
       } else {
          session.setAttribute("errorMsg", "게시물 삭제에 실패했습니다.");
          return "common/errorPage";
       }
    }


    @ResponseBody
    @PostMapping(value = "findId.member", produces = "application/json; charset=UTF-8")
    public String findId(String userName, String phone, String email) {
       HashMap<String, String> map = new HashMap<String, String>();
       map.put("userId", "아이디를 찾을 수 없습니다.");
       String userId = memberService.findId(userName, phone, email);
       if(userId != null) {
          map.put("userId", userId);
       }
        Gson gson = new Gson();
        String jsonResponse = gson.toJson(map);
        return jsonResponse;
    }

    @PostMapping("updatePwd.member")
    public ModelAndView updatePwd(@RequestParam("currentPwd") String currentPwd, @RequestParam("newPwd") String newPwd, ModelAndView mv, HttpSession session) {
        Member loginUser = (Member) session.getAttribute("loginUser");

        if (bcryptPasswordEncoder.matches(currentPwd, loginUser.getUserPwd())) {
            String encPwd = bcryptPasswordEncoder.encode(newPwd);
            loginUser.setUserPwd(encPwd);
            if (memberService.updatePwd(loginUser) > 0) {
                session.setAttribute("alertMsg", "비밀번호 변경 성공!");
                mv.setViewName("redirect:/");
            } else {
                mv.addObject("errorMsg", "비밀번호 변경 실패");
                mv.setViewName("common/errorPage");
            }
        } else {
            mv.addObject("errorMsg", "현재 비밀번호가 일치하지 않습니다.");
            mv.setViewName("common/errorPage");
        }

        return mv;
    }

	
	
	
   
   
   

}