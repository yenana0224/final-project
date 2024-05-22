package com.kh.hondimoyeong.review.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.hondimoyeong.common.model.vo.PageInfo;
import com.kh.hondimoyeong.common.template.Pagination;
import com.kh.hondimoyeong.course.model.vo.Course;
import com.kh.hondimoyeong.review.model.service.ReviewService;
import com.kh.hondimoyeong.review.model.vo.Review;
import com.kh.hondimoyeong.review.model.vo.ReviewComment;
import com.kh.hondimoyeong.review.model.vo.ReviewImg;

@Controller
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	/**
	 * 
	 * @param page
	 * @param model
	 * @return
	 */
	@RequestMapping("review")
	public String selectList(@RequestParam(value="page", defaultValue="1") int page, Model model) {
		PageInfo pi = Pagination.getPageInfo(reviewService.selectListCount(), page, 10, 5);
		
		List<ReviewComment> comment = reviewService.selectCommentCount();
		
		model.addAttribute("comment", comment);
		model.addAttribute("review", reviewService.selectList(pi));
		model.addAttribute("pageInfo", pi);
		return "review/reviewList";
	}
	
	@RequestMapping("detail.rvw")
	public ModelAndView detail(int reviewNo, ModelAndView mv) {
		
		Review review = reviewService.selectReview(reviewNo);
		if(review != null) {
			List<ReviewImg> reviewImgs = reviewService.selectReviewImgs(reviewNo);
			review.setReviewImgs(reviewImgs);
			
			if(reviewService.increaseCount(reviewNo) > 0) {
				mv.addObject("review", review).setViewName("review/reviewDetail");
			} else {
				mv.addObject("errorMsg", "조회 실패").setViewName("common/errorPage");
			}
		} else {
			mv.addObject("errorMsg", "리뷰 찾을 수 없음").setViewName("common/errorPage");
		}
		return mv;
	}
	
	@RequestMapping("search.rvw")
	public String search(@RequestParam(value="keyword") String keyword,
						 @RequestParam(value="condition") String condition,
						 @RequestParam Map<String, String> map,
						 @RequestParam(value="page", defaultValue="1") int page, Model model) {
		
		Map<String, String> searchMap = new HashMap<String, String>();
		searchMap.put("condition", condition);
		searchMap.put("keyword", keyword);
		
		int totalCount = reviewService.searchCount(searchMap);
		PageInfo pi = Pagination.getPageInfo(totalCount, page, 10, 5);
		List<Review> review = reviewService.search(searchMap, pi);
		
		model.addAttribute("keyword", keyword);
		model.addAttribute("condition", condition);
		model.addAttribute("review", review);
		model.addAttribute("searchPage", pi);
		
		return "review/reviewList";
	}
	
	@RequestMapping("insertForm.rvw")
	public String insertForm(Model model, Course course) {
		List<Course> courseList = reviewService.selectCourse(course);
		model.addAttribute("courseList", courseList);
		return "review/reviewInsertForm";
	}
	
	@RequestMapping("insert.rvw")
	public String insert(Review review,
	                     @RequestParam("upfiles1") MultipartFile[] upfiles1,
	                     @RequestParam("upfiles2") MultipartFile[] upfiles2,
	                     HttpSession session,
	                     Model model) {
	    
	    reviewService.insert(review);
	    int reviewNo = review.getReviewNo();
	    
	    if (reviewNo > 0) { // 리뷰가 등록 될 경우
	        for (MultipartFile upfile : upfiles1) {
	            if (!upfile.getOriginalFilename().equals("")) { // 첫 번째 첨부파일이 있을 경우
	                String originalFilename = upfile.getOriginalFilename();
	                String changeName = saveFile(upfile, session);

	                // REVIEW_IMG 테이블에 첫 번째 파일 정보 삽입
	                ReviewImg reviewImg = new ReviewImg();
	                reviewImg.setReviewNo(reviewNo);
	                reviewImg.setOriginName(originalFilename);
	                reviewImg.setChangeName(changeName);
	                reviewService.insertImg(reviewImg);
	            }
	        }

	        for (MultipartFile upfile : upfiles2) {
	            if (!upfile.getOriginalFilename().equals("")) { // 두 번째 첨부파일이 있을 경우
	                String originalFilename = upfile.getOriginalFilename();
	                String changeName = saveFile(upfile, session);

	                // REVIEW_IMG 테이블에 두 번째 파일 정보 삽입
	                ReviewImg reviewImg = new ReviewImg();
	                reviewImg.setReviewNo(reviewNo);
	                reviewImg.setOriginName(originalFilename);
	                reviewImg.setChangeName(changeName);
	                reviewService.insertImg(reviewImg);
	            }
	        }
	        session.setAttribute("alertMsg", "게시글 작성 성공!");
	        return "redirect:review";
	    } else { 
	        model.addAttribute("errorMsg", "작성 실패");
	        return "common/errorPage";
	    }
	}
	
  
	@PostMapping("update.rvw")
	public String update(@ModelAttribute Review review,
	                     @ModelAttribute ReviewImg reviewImg,
	                     @RequestParam("reUpfile1") MultipartFile[] reUpfiles1,
	                     @RequestParam("reUpfile2") MultipartFile[] reUpfiles2,
	                     HttpSession session, Model model) {

	    // 리뷰 업데이트
	    int reviewUpdateResult = reviewService.update(review);
	    if (reviewUpdateResult <= 0) {
	        System.out.println(review);
	        session.setAttribute("errorMsg", "실패");
	        return "common/errorPage";
	    }

	    if (reUpfiles1 != null && reUpfiles1.length > 0) {
	        for (MultipartFile reUpfile : reUpfiles1) {
	            // 파일이 비어있지 않은 경우에만 처리
	            if (reUpfile != null && !reUpfile.isEmpty()) {
	                String originalFilename = reUpfile.getOriginalFilename();
	                String changeName = saveFile(reUpfile, session);
	                if (originalFilename != null && !originalFilename.isEmpty()) {
	                    // 기존 첨부파일 존재 => 삭제
	                    if (reviewImg.getChangeName() != null) {
	                        new File(session.getServletContext().getRealPath(reviewImg.getChangeName())).delete();
	                    }
	                    // 새로운 reviewImg 객체 생성
	                    ReviewImg newReviewImg = new ReviewImg();
	                    newReviewImg.setReviewNo(review.getReviewNo());
	                    newReviewImg.setOriginName(originalFilename);
	                    newReviewImg.setChangeName(changeName);
	                    reviewService.updateImg(newReviewImg);
	                    
	                    System.out.println(newReviewImg);
	                }
	            }
	        }
	    }

	    if (reUpfiles2 != null && reUpfiles2.length > 0) {
	        for (MultipartFile reUpfile : reUpfiles2) {
	            // 파일이 비어있지 않은 경우에만 처리
	            if (reUpfile != null && !reUpfile.isEmpty()) {
	                String originalFilename = reUpfile.getOriginalFilename();
	                String changeName = saveFile(reUpfile, session);
	                if (originalFilename != null && !originalFilename.isEmpty()) {
	                    // 기존 첨부파일 존재 => 삭제
	                    if (reviewImg.getChangeName() != null) {
	                        new File(session.getServletContext().getRealPath(reviewImg.getChangeName())).delete();
	                    }
	                    // 새로운 reviewImg 객체 생성
	                    ReviewImg newReviewImg = new ReviewImg();
	                    newReviewImg.setReviewNo(review.getReviewNo());
	                    newReviewImg.setOriginName(originalFilename);
	                    newReviewImg.setChangeName(changeName);
	                    reviewService.updateImg(newReviewImg);
	                    
	                    System.out.println(newReviewImg);
	                }
	            }
	        }
	    }
	    session.setAttribute("alertMsg", "성공");
	    return "redirect:detail.rvw?reviewNo=" + review.getReviewNo();
	}

	// 파일 따로 빼두기
	public String saveFile(MultipartFile upfile, HttpSession session) {
	    String originalFilename = upfile.getOriginalFilename();
	    String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
	    String uniqueFileName = UUID.randomUUID().toString() + ext;
	    String savePath = session.getServletContext().getRealPath("/resources/reviewFile/");
	    
        try {
			upfile.transferTo(new File(savePath + uniqueFileName));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	    return "resources/reviewFile/" + uniqueFileName;
	}

	
	@PostMapping("updateForm.rvw")
	public ModelAndView updateForm(int reviewNo, ModelAndView mv, Course course) {
		List<Course> courseList = reviewService.selectCourse(course);
		
		mv.addObject("courseList", courseList);
		mv.addObject(reviewService.selectReview(reviewNo)).setViewName("review/reviewUpdateForm");
		return mv;
	}


	
	/**
	 * 댓글 ajax
	 */
	@ResponseBody
	@GetMapping(value="comment", produces="application/json; charset=UTF-8")
	public String selectComment(int reviewNo) {
		return new Gson().toJson(reviewService.selectComment(reviewNo));
	}
	
	@ResponseBody
	@PostMapping("comment")
	public String ajaxInsertComment(ReviewComment reviewComment) {
		return reviewService.insertComment(reviewComment) > 0 ? "success" : "fail";
	}

}
