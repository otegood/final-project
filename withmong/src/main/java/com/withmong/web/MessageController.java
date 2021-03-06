package com.withmong.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.withmong.model.Message;
import com.withmong.model.User;
import com.withmong.service.ManagerService;
import com.withmong.service.MessageService;

@Controller
public class MessageController {
	
	@Autowired
	private MessageService messageService;
	@Autowired
	private ManagerService managerService;
	
	@ExceptionHandler(RuntimeException.class)
	public String runtimeExceptionHandler(RuntimeException ex){
		ex.printStackTrace();
		return "error/error";
	}
	
	// 메세지 목록
	@RequestMapping("/messagelist.do")
	public String messagelist(Model model,  User loginedUser) {
		List<Message> messageList = messageService.getAllMessages(loginedUser.getId());
		List<Message> onebyoneList = messageService.getOnebyone(loginedUser.getId());
		// 메세지 목록조회
		model.addAttribute("messageList", messageList);
		// 1:1메세지 리스트
		model.addAttribute("onebyoneList", onebyoneList);
				
		return "message/messagelist";
	}
	
	//쪽지보내기 폼
	@RequestMapping(value="/firstmessage.do", method=RequestMethod.GET)
	public String form() {
		return "message/messageform";
	}
	//쪽지보내기
	@RequestMapping(value="/firstmessage.do", method=RequestMethod.POST)
	public String firstMessage(Message message, User loginedUser, @RequestParam(name="receiver.id") String receiver) {
		message.setSender(loginedUser);
		message.setReceiver(managerService.getUserM(receiver));
		message.setContents(message.getContents().replace("\r\n", "<br>"));
		messageService.addFirstMessage(message);
		return "redirect:/messagelist.do";
	}
	
	// 유저에게 바로 쪽지보내기 폼
	@RequestMapping(value="/tomessage.do", method=RequestMethod.GET)
	public String formMessage() {
		return "message/messageformTo";
	}
	//쪽지보내기
	@RequestMapping(value="/tomessage.do", method=RequestMethod.POST)
	public String toMessage(Message message, User loginedUser, @RequestParam(name="receiver.id") String receiver) {
		message.setSender(loginedUser);
		message.setReceiver(managerService.getUserM(receiver));
		message.setContents(message.getContents().replace("\r\n", "<br>"));
		messageService.addFirstMessage(message);
		return "redirect:/messagelist.do";
	}
}
