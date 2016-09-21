package com.withmong.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

import com.withmong.model.Message;
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
		model.addAttribute("messageList", messageList);
		return "message/messagelist";
	}
}
