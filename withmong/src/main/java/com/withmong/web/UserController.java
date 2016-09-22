package com.withmong.web;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.DigestUtils;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.Errors;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.withmong.dao.UserDao;
import com.withmong.form.UserForm;
import com.withmong.model.User;
import com.withmong.service.UserService;

@Controller
public class UserController {
	
	@Autowired private UserService userService;
	private static String UPLOAD_DIRECTORY = "c:/upload";
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
	}
	//에러날때
	@ExceptionHandler(RuntimeException.class)
	public String runtimeExceptionHandler(RuntimeException ex) {
		ex.printStackTrace();
		return "error/error";
	}
	//메인접속
	@RequestMapping("/main.do")
	public String main(){
		return "main";
	}
	//template접속
	@RequestMapping("/temp.do")
	public String temp(){
		return "temp";
	}
	//agreement 접속
	@RequestMapping("/agree.do")
	public String agreementform() {
		return "member/agreement";
	}
	//register 가입폼 접속
	@RequestMapping(value="/register.do", method=RequestMethod.GET)
	public String registerform() {
		return "member/registerform";
	}
	
	// Register - 가입을하면서 데이터를 DB에 넣기
	@RequestMapping(value="/register.do", method=RequestMethod.POST)
	public String register(UserForm userform, @RequestParam("img")MultipartFile img)throws Exception{
	
		// 사용자가 가입하기위에 작성한 내용을 DB에 넣기
		User user = new User();
		BeanUtils.copyProperties(userform, user);
		
		// 비밀번호 암호화하기
		String plainPassword = user.getPassword();
		String secretPassword = DigestUtils.md5DigestAsHex(plainPassword.getBytes());
		user.setPassword(secretPassword);
		
		// 전화번호 합치기
		String phone1 = userform.getPhone1();
		String phone2 = userform.getPhone2();
		String phone3 = userform.getPhone3();
		
		user.setPhone(phone1+"-"+phone2+"-"+phone3);
		
		// 학력 합치기
		String schoolAbility1 = userform.getSchoolAbility1();
		String schoolAbility2 = userform.getSchoolAbility2();
		String schoolAbility3 = userform.getSchoolAbility3();
		
		user.setSchoolAbility(schoolAbility1+schoolAbility2+schoolAbility3);
		
		//파일업로드
		String filename = img.getOriginalFilename();
		
		String userid = userform.getId();
		
		String extName = filename.substring(filename.lastIndexOf(".")+1);
		
		byte[] bytes = img.getBytes();
		File file = new File(UPLOAD_DIRECTORY, userid + "." + extName);
	
		FileCopyUtils.copy(bytes, file);
		
		user.setImg(userid + "." + extName);
		
		userService.register(user);
		
		//redirect 재요청
		return "redirect:/regsuccess.do";
	}
	
//------------------------------------------------------------------------------------------------------//
	
	// id 중복을 체크하는 문구
	@RequestMapping("/idcheck.do")
	public @ResponseBody String idcheck(String id) {
		
		User checkUser = userService.idCheck(id);
		
		if (checkUser!=null){
			return "{\"size\":1}";
		}
		return "{\"size\":0}";
	}
	
	// 전화번호 중복을 체크하는 문구
	@RequestMapping("/phonecheck.do")
	public @ResponseBody String phonecheck(String phone) {
		
		User checkPhone = userService.phoneCheck(phone);
		
		if (checkPhone != null){
			return "{\"size\":1}";
		}
		return "{\"size\":0}";
	}
	
//------------------------------------------------------------------------------------------------------//
	
	//가입 성공시 나오는 문구
	@RequestMapping("/regsuccess.do")
	public String regsuccess() {
		
		return "member/regsuccess";
	}
	
	
	//로그인화면 접속
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String loginform() {
		
		return "member/loginform";
	}
	
	//로그인을 실행
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String login(UserForm userform, HttpSession session){
		
		User user = userService.login(userform.getId(), userform.getPassword());
		
		session.setAttribute("LOGIN_USER", user);
		
		return "redirect:/temp.do";
	}
}
