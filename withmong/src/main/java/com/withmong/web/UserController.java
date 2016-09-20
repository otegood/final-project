package com.withmong.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.withmong.form.UserForm;
import com.withmong.model.User;
import com.withmong.service.UserService;

@Controller
public class UserController {
	
	@Autowired private UserService userService;
	
	@ExceptionHandler(RuntimeException.class)
	public String runtimeExceptionHandler(RuntimeException ex) {
		ex.printStackTrace();
		return "error/error";
	}
	
	@RequestMapping("/temp.do")
	public String temp(){
		return "temp";
	}
	
	@RequestMapping(value="/register.do", method=RequestMethod.GET)
	public String registerform() {
		return "member/registerform";
	}
	
	@RequestMapping(value="/register.do", method=RequestMethod.POST)
	public String register(UserForm userform) {
	
		// 사용자가 가입하기위에 작성한 내용을 DB에 넣기
		User user = new User();
		BeanUtils.copyProperties(userform, user);
		
		String plainPassword = user.getPassword();
		String secretPassword = DigestUtils.md5DigestAsHex(plainPassword.getBytes());
		user.setPassword(secretPassword);
		
		//redirect 재요청
		return "redirect:/login.do";
	}
	
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String loginform() {
		
		return "member/loginform";
	}
	
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String login(UserForm userform, HttpSession session){
		
		User user = userService.login(userform.getId(), userform.getPassword());
		
		session.setAttribute("LOGIN_USER", user);
		
		return "redirect:/temp.do";
	}
}
