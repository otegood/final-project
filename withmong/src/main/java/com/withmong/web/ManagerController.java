package com.withmong.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.withmong.model.User;
import com.withmong.service.BoardService;
import com.withmong.service.ManagerService;

@Controller
public class ManagerController {

	@Autowired private ManagerService managerService;
	@Autowired private BoardService boardService;
	
	@ExceptionHandler(RuntimeException.class)
	public String runtimeExceptionHandler(RuntimeException ex) {
		ex.printStackTrace();
		return "error/error";
	}
	
	//관리자 메인 접속
	@RequestMapping("/mmain.do")
	public String mmain(Model model, User loginedUser){
		//유저 목록조회
		String url = "";
		List<User> userList = managerService.getAllUsers();  
		model.addAttribute("userList", userList);
		
		model.addAttribute("noticelist", boardService.noticeList() );
		model.addAttribute("qnalist", boardService.qnaList());
		model.addAttribute("requestlist", boardService.requestList() );
		
		if(loginedUser.getId().equals("king")){
			url = "mmain"; 
		}else{
			url = "main";
		}
		return url;
	}

	//유저 목록조회
	@RequestMapping("/userlist.do")
	public String messagelist(Model model) {
		List<User> userList = managerService.getAllUsers();  
		model.addAttribute("userList", userList);
		return "member/userlist";
	}
	//유저 상세조회
	@RequestMapping("/userdetailm.do")
	public String userdetailm(Model model, @RequestParam(name="id") String id) {
		model.addAttribute("userdetail",managerService.getUserM(id));
		return "member/userdetailm";
	}
	
	//유저 계정삭제 처리
	@RequestMapping("/deleteUser.do")
	public String userDelete(@RequestParam(name="id") String id){
		managerService.userDelete(id);
		return "redirect:/userlist.do";
	}
	
	//유저 계정복구 처리
	@RequestMapping("/restoreUser.do")
	public String userRestore(@RequestParam(name="id") String id){
		managerService.userRestore(id);
		return "redirect:/userlist.do";
	}
}
