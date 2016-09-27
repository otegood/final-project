package com.withmong.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.withmong.model.Notice;
import com.withmong.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired private BoardService boardService;
	
	@ExceptionHandler(RuntimeException.class)
	public String runtimeExceptionHandler(RuntimeException ex) {
		ex.printStackTrace();
		return "error/error";
	}
	// 공지사항 목록
	@RequestMapping("/noticelist.do")
	public String noticeList(Model model) {
		model.addAttribute("notices", boardService.noticeList());
		return "board/noticelist";
	}
	
	//공지사항 입력폼
	@RequestMapping(value="/noticeRegister.do", method=RequestMethod.GET)
	public String noticeForm() {
		return "board/noticeform";
	}
	//공지사항 입력처리
	@RequestMapping(value="/noticeRegister.do", method=RequestMethod.POST)
	public String registerNotice(Notice notice) {
		boardService.addNotice(notice);
		return "redirect:/noticelist.do";
	}
	
	// 공지사항 상세페이지
	@RequestMapping("/noticeDetail.do")
	public String noticeDetail(Model model, @RequestParam(name="no") int no) {
		model.addAttribute("notice", boardService.noticeDetail(no));
		return "board/noticedetail";
	}
	
}
