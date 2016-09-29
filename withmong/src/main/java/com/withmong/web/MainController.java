package com.withmong.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.withmong.model.Point;
import com.withmong.model.Product;
import com.withmong.model.User;
import com.withmong.service.MainService;

@Controller
public class MainController {
	
	@Autowired
	private MainService mainService;
	
	//에러날때
	@ExceptionHandler(RuntimeException.class)
	public String runtimeExceptionHandler(RuntimeException ex) {
		ex.printStackTrace();
		return "error/error";
	}
	/* 	
	//인기순 보기
	@RequestMapping("avglike.do")
	public @ResponseBody Product getAvglike(@RequestParam(name="no") String avglike){
		List<Product> getAvglike = mainService.getAvglikeList();
		
		return (Product) getAvglike;
	}

	
	
	
	//조회순 보기
	@RequestMapping(value="/hits.do", method=RequestMethod.GET)
	public String history(Model model, User loginedUser) throws Exception {
		
		//포인트 사용내역 보기
		List<Point> pointList = pointService.getPointList(loginedUser.getId());
		model.addAttribute("pointlist", pointList);
	
	*/
	
	//등록순 보기
	@RequestMapping(value="/recent.do", method=RequestMethod.GET)
	public String recent(Model model) throws Exception {
		List<Product> recentList = mainService.getRegList();
		model.addAttribute("recentList", recentList);
		
		return "main.do";
	}
		
}
