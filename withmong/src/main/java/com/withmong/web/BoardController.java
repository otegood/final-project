package com.withmong.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	@RequestMapping("/noticelist.do")
	public String userdetailm(Model model) {
		model.addAttribute("notices", boardService.noticeList());
		return "board/noticelist";
	}
	
	
	@RequestMapping(value="/noiceRegister.do", method=RequestMethod.GET)
	public String noticeForm() {
		return "board/noticeform";
	}
	@RequestMapping(value="/noiceRegister.do", method=RequestMethod.POST)
	public String registerNotice(Notice notice) {
		boardService.addNotice(notice);
		return "redirect:/noticelist.do";
	}
}
