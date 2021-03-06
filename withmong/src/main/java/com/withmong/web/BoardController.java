package com.withmong.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.withmong.model.Notice;
import com.withmong.model.QNA;
import com.withmong.model.QNAReple;
import com.withmong.model.Request;
import com.withmong.model.RequestReple;
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
		// 댓글 목록
		List<RequestReple> reples = boardService.requestRepleList(no);
		model.addAttribute("requestReple", reples);
		model.addAttribute("requestRepleLength", reples.size());
		return "board/requestdetail";
	}
	
	// 요청글 삭제처리
	@RequestMapping("/requestDelete.do")
	public String requestDelete(@RequestParam(name="no") int no) {
		boardService.requestDelete(no);
		return "redirect:/requestlist.do";
	}
	
	// 요청게시글 업데이트폼
	@RequestMapping("/requestUpdateForm.do")
	public String requestUpdateForm(Model model, @RequestParam(name="no") int no){
		model.addAttribute("request", boardService.requestDetail(no));
		return "board/requestupdate";
	}
	// 요청게시글 업데이트
	@RequestMapping("/requestUpdate.do")
	public String requestUpdate(Request	request) {
		request.setContents(request.getContents().replace("\r\n", "<br>"));
		boardService.updateRequest(request);
		return "redirect:/requestlist.do";
	}
	// 요청게시글 댓글 작성
	@RequestMapping(value="/requestReple.do")
	public String requestReple(RequestReple requestReply, User loginedUser, @RequestParam(name="no") int no) {
		requestReply.setContents(requestReply.getContents().replace("\r\n", "<br>"));
		requestReply.setUserId(loginedUser);
		requestReply.setBoardNo(boardService.requestDetail(no));
		boardService.addRequestReply(requestReply);
		return "redirect:/requestDetail.do?no="+no;
	}
	
	// QnA게시판 목록
	@RequestMapping("/qnalist.do")
	public String qnaList(Model model) {
		model.addAttribute("qna", boardService.qnaList());
		return "board/qnalist";
	}
	//QNA 입력폼
	@RequestMapping(value="/qnaRegister.do", method=RequestMethod.GET)
	public String qnaForm() {
		return "board/qnaform";
	}
	//QNA 입력처리
	@RequestMapping(value="/qnaRegister.do", method=RequestMethod.POST)
	public String qnaRegister(QNA qna, User loginedUser) {
		qna.setContents(qna.getContents().replace("\r\n", "<br>"));
		qna.setUserId(loginedUser);
		boardService.addQna(qna);
		return "redirect:/qnalist.do";
	}
	
	// qna 상세페이지
	@RequestMapping("/qnaDetail.do")
	public String qnaDetail(Model model, @RequestParam(name="no") int no) {
		model.addAttribute("qna", boardService.qnaDetail(no));
		// 댓글 목록
		List<QNAReple> reples = boardService.qnaRepleList(no);
		model.addAttribute("qnaReple", reples);
		model.addAttribute("qnaRepleLength", reples.size());
		return "board/qnadetail";
	}
	
	// qna 삭제처리
	@RequestMapping("/qnaDelete.do")
	public String qnaDelete(@RequestParam(name="no") int no) {
		boardService.qnaDelete(no);
		return "redirect:/qnalist.do";
	}
	
	// QNA 업데이트폼
	@RequestMapping("/qnaUpdateForm.do")
	public String qnaUpdateForm(Model model, @RequestParam(name="no") int no){
		model.addAttribute("qna", boardService.qnaDetail(no));
		return "board/qnaupdate";
	}
	// 요청게시글 업데이트
	@RequestMapping("/qnaUpdate.do")
	public String qnaUpdate(QNA	qna) {
		qna.setContents(qna.getContents().replace("\r\n", "<br>"));
		boardService.updateQna(qna);
		return "redirect:/qnalist.do";
	}
	
	// qna 댓글 작성
	@RequestMapping(value="/qnaReple.do")
	public String qnaReple(QNAReple qnaReple, User loginedUser, @RequestParam(name="no") int no) {
		qnaReple.setContents(qnaReple.getContents().replace("\r\n", "<br>"));
		qnaReple.setUserId(loginedUser);
		qnaReple.setBoardNo(boardService.qnaDetail(no));
		boardService.addQnaReply(qnaReple);
		return "redirect:/qnaDetail.do?no="+no;
	}
	// 로그인한 유저의 요청게시글 목록
	@RequestMapping("/myrequestlist.do")
	public String myRequestList(Model model) {
		model.addAttribute("requests", boardService.requestList());
		return "board/myrequestlist";
	}
}
