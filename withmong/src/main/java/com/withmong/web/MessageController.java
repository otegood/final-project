package com.withmong.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.withmong.model.Message;
import com.withmong.model.User;
import com.withmong.service.MessageService;

@Controller
public class MessageController {
	
	@Autowired
	private MessageService messageService;
	
	@ExceptionHandler(RuntimeException.class)
	public String runtimeExceptionHandler(RuntimeException ex){
		ex.printStackTrace();
		return "error/error";
	}
	
	@RequestMapping("/messagelist.do")
	public String messagelist(Model model) {
		
		List<Message> messageList = messageService.getAllMessages();  
		List<Message> onebyoneList = messageService.getOnebyone();
		model.addAttribute("messageList", messageList);
		model.addAttribute("onebyoneList", onebyoneList);
		return "message/messagelist";
	}
	
	@RequestMapping(value="/firstmessage.do", method=RequestMethod.GET)
	public String form() {
		return "message/messageform";
	}
	
	@RequestMapping(value="/firstmessage.do", method=RequestMethod.POST)
	public String firstMessage(Message message, User loginedUser) {
		message.setSender(loginedUser.getId()); 
		messageService.addFirstMessage(message);
		return "redirect:message/messagelist";
	}
}
