package com.withmong.web;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.withmong.model.Point;
import com.withmong.model.User;
import com.withmong.service.PointService;
import com.withmong.service.UserService;

@Controller
public class PointController {

	@Autowired
	private PointService pointService;
	
	//에러날때
	@ExceptionHandler(RuntimeException.class)
	public String runtimeExceptionHandler(RuntimeException ex) {
		ex.printStackTrace();
		return "error/error";
	}
		
	
	//포인트 관련 DB
	@RequestMapping(value="/history.do", method=RequestMethod.GET)
	public String history(Model model, User loginedUser) throws Exception {
		
		//포인트 사용내역 보기
		List<Point> pointList = pointService.getPointList(loginedUser.getId());
		model.addAttribute("pointlist", pointList);
		return "point/history";
	}
	
	@RequestMapping(value="/charge.do", method=RequestMethod.GET)
	public String charge(Point pointForm) throws Exception{
		//포인트 변경
		User user = new User();
		user.setPoint(pointForm.getCharge());
		
		//userService.changePoint(user);
		
		//포인트 내역 추가
		 Point point = new Point();
		 BeanUtils.copyProperties(pointForm, point);
		 
			 //충전금액
			 point.setCharge(pointForm.getCharge());
			 //충전 한 날짜
			 point.setRegdate(pointForm.getRegdate());
			 
		 
		 pointService.addPointHistory(point);
		
		return "redirect:/charge.do";
	}
	
	
	@RequestMapping(value="/withdraw.do", method=RequestMethod.GET)
	public String withdraw(Point pointForm) throws Exception{
		User user = new User();
		user.setPoint(pointForm.getCharge());
		
		//userService.changePoint(user);
		
		//포인트 내역 추가
		 Point point = new Point();
		 BeanUtils.copyProperties(pointForm, point);
		 
			 //출금금액
			 point.setWithdraw(pointForm.getWithdraw());
			 //출금 한 날짜
			 point.setRegdate(pointForm.getRegdate());
			 
		 
		 pointService.addPointHistory(point);
		
		return "redirect:/withdraw.do";
	}
}
