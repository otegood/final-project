package com.withmong.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MessageController {

	@ExceptionHandler(RuntimeException.class)
	public String runtimeExceptionHandler(RuntimeException ex){
		ex.printStackTrace();
		return "error/error";
	}
	
	@RequestMapping("/messagelist.do")
	public String messagelist(Model model) {
				
		return "message/messagelist";
	}
}
