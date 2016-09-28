package com.withmong.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.withmong.model.Notice;
import com.withmong.model.Request;
import com.withmong.model.User;
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
		notice.setContents(notice.getContents().replace("\r\n", "<br>"));
		boardService.addNotice(notice);
		return "redirect:/noticelist.do";
	}
	
	// 공지사항 상세페이지
	@RequestMapping("/noticeDetail.do")
	public String noticeDetail(Model model, @RequestParam(name="no") int no) {
		model.addAttribute("notice", boardService.noticeDetail(no));
		return "board/noticedetail";
	}
	
	// 공지사항 삭제
	@RequestMapping("/noticeDelete.do")
	public String noticeDelete(Model model, @RequestParam(name="no") int no) {
		boardService.noticeDelete(no);
		return "redirect:/noticelist.do";
	}
	
	// 공지사항 업데이트 폼
	@RequestMapping("/noticeUpdate.do")
	public String noticeUpdate(Model model, @RequestParam(name="no") int no) {
		model.addAttribute("notice", boardService.noticeDetail(no));
		return "board/noticeupdate";
	}
	// 공지사항 업데이트
	@RequestMapping("/noticeDbUpdate.do")
	public String noticeDbUpdate(Notice notice) {
		notice.setContents(notice.getContents().replace("\r\n", "<br>")); 
		boardService.updateNotice(notice);
		return "redirect:/noticelist.do";
	}
	
	//요청게시판 목록
	@RequestMapping("/requestlist.do")
	public String requestList(Model model) {
		model.addAttribute("requests", boardService.requestList());
		return "board/requestlist";
	}
	
	//요청글 입력폼
	@RequestMapping(value="/requestRegister.do", method=RequestMethod.GET)
	public String requestForm() {
		return "board/requestform";
	}
	//요청글 입력처리
	@RequestMapping(value="/requestRegister.do", method=RequestMethod.POST)
	public String requestRegister(Request request, User loginedUser) {
		request.setContents(request.getContents().replace("\r\n", "<br>"));
		request.setUserId(loginedUser);
		boardService.addRequest(request);
		return "redirect:/requestlist.do";
	}
	
	// 요청글 상세페이지
	@RequestMapping("/requestDetail.do")
	public String requestDetail(Model model, @RequestParam(name="no") int no) {
		model.addAttribute("request", boardService.requestDetail(no));
		return "board/requestdetail";
	}
}
