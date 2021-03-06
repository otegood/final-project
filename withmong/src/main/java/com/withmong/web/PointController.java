package com.withmong.web;

import java.util.List;

import javax.swing.plaf.synth.SynthSeparatorUI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.withmong.model.Point;
import com.withmong.model.User;
import com.withmong.service.PointService;


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

		//현재 포인트 알림
		model.addAttribute("loginedUser", loginedUser);
	
		
		return "point/history";
		
	}
	//충전하기
	@RequestMapping(value="/charge.do", method=RequestMethod.GET)
	public String charge(Model model)  {
		
		return "point/charge";
	}
	
	//충전
	@RequestMapping(value="/charge.do", method=RequestMethod.POST)
	public String charge(int point, User loginedUser) throws Exception{
		
		loginedUser.setPoint(point+loginedUser.getPoint());
		
		pointService.charge(loginedUser.getId(), point);
		
		return "redirect:/history.do";
		
	}
	
	//환전하기
	@RequestMapping(value="/withdraw.do", method=RequestMethod.GET)
	public String withdraw(Point pointForm) throws Exception{
		
		return "point/withdraw";
	}
	//환전
	@RequestMapping(value="/withdraw.do", method=RequestMethod.POST)
	public String withdraw(int point, User loginedUser) throws Exception {
		
		if(loginedUser.getPoint()-point >= 0) {
			loginedUser.setPoint(loginedUser.getPoint()-point);
			pointService.withdraw(loginedUser.getId(), point);
		} else {
			return "point/charge";
		}
		
		return "redirect:/history.do";
		
	}
}
