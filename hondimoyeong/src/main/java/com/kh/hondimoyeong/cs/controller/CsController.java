package com.kh.hondimoyeong.cs.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.common.template.Pagination;
import com.kh.hondimoyeong.cs.model.service.NoticeService;
import com.kh.hondimoyeong.cs.model.vo.Faq;
import com.kh.hondimoyeong.cs.model.vo.Notice;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class CsController {
	
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("list.notice")
	public String selectAll(@RequestParam(value="page", defaultValue="1") int page, Model model) {
		
		PageInfo pi = Pagination.getPageInfo(noticeService.selectListCount(), page, 10, 5);
		
		List<Faq> faqList = noticeService.faqList();
		model.addAttribute("faqList", faqList);
		
		model.addAttribute("notice", noticeService.selectList(pi));
		model.addAttribute("pageInfo", pi);
		
		return "cs/csList";
	}
	
	@RequestMapping("detail.notice")
	public ModelAndView detail(int noticeNo, ModelAndView mv) {
		if(noticeService.increaseCount(noticeNo) > 0) {
			mv.addObject("notice", noticeService.selectNotice(noticeNo)).setViewName("cs/noticeDetail");
		} else {
			mv.addObject("errorMsg", "상세조회 실패").setViewName("common/errorPage");
		}
		return mv;
	}

	@RequestMapping("enrollForm.notice")
	public String enrollForm() {
		return "cs/noticeInsertForm";
	}

	@RequestMapping("insert.notice")
	public String insert(Notice notice, HttpSession session, Model model) {
		if(noticeService.insert(notice) > 0) {
			session.setAttribute("alertMsg", "공지사항이 등록 되었습니다.");
			return "redirect:list.notice";
		} else {
			model.addAttribute("alertMsg", "공지사항 등록 실패했습니다.");
			return "notice/noticeInsertForm";
		}
	}
	
	@PostMapping("updateForm.notice")
	public ModelAndView updateForm(int noticeNo, ModelAndView mv) {
		mv.addObject("notice", noticeService.selectNotice(noticeNo)).setViewName("cs/noticeUpdateForm");
		return mv;
	}
	
	@PostMapping("update.notice")
	public String update(@ModelAttribute Notice notice, HttpSession session) {
		if(noticeService.update(notice) > 0) {
			session.setAttribute("alertMsg", "공지사항이 수정되었습니다.");
			return "redirect:detail.notice?noticeNo=" + notice.getNoticeNo();
		} else {
			session.setAttribute("alertMsg", "공지사항 수정 실패했습니다.");
			return "common/errorPage";
		}
	}
	
	@RequestMapping("delete.notice")
	public String delete(int noticeNo, HttpSession session) {
		if(noticeService.delete(noticeNo) > 0) {
			session.setAttribute("alertMsg", "게시글 삭제 성공했습니다.");
			return "redirect:list.notice";
			
		} else {
			session.setAttribute("alertMsg", "게시글 삭제 실패");
			return "common/errorPage";
		}
	}

	@GetMapping("search.notice")
	public String search(@RequestParam(value="keyword") String keyword,
						 @RequestParam(value="page", defaultValue="1") int page, Model model) {
		
		int totalCount = noticeService.selectSearchCount(keyword);
		PageInfo pi = Pagination.getPageInfo(totalCount, page, 10, 5);
		List<Notice> search = noticeService.search(keyword, pi);
		
		model.addAttribute("pageInfo", pi);
		model.addAttribute("notice", search);
		model.addAttribute("keyword", keyword);
		
		return "cs/csList";
	}
	
}
