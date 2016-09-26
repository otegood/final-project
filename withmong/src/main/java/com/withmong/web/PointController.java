package com.withmong.web;

import java.util.List;

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
	
	private static String UPLOAD_DIRECTORY = "c:/upload";
	
	//에러날때
	@ExceptionHandler(RuntimeException.class)
	public String runtimeExceptionHandler(RuntimeException ex) {
		ex.printStackTrace();
		return "error/error";
	}
		
	
	//포인트 관련 DB에 넣기
	@RequestMapping(value="/point.do", method=RequestMethod.POST)
	public String history(Model model, User loginedUser) throws Exception {

		//포인트 사용내역 보기
		List<Point> pointList = pointService.getPointList();
		model.addAttribute("getPointList", pointList);
		return "history";
	}
	
	
}
