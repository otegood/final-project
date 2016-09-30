package com.withmong.web;

import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
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
		
	//등록순 보기
	@RequestMapping(value="/recentlist.do", method=RequestMethod.GET)
	public @ResponseBody List<Product>  recent (int no) throws Exception{
		List<Product> recentList = mainService.getRegList();
		
		
		return recentList;
	}
	
	
	//조회순 보기
		@RequestMapping(value="/hitslist.do", method=RequestMethod.GET)
		public @ResponseBody List<Product>  hits (int no) throws Exception{
			List<Product> hitsList = mainService.getHitList();

			
			return hitsList;
			
		}
	
	//인기순 보기
		@RequestMapping(value="/avglikelist.do", method=RequestMethod.GET)
		public @ResponseBody  List<Product> avglike (int no) throws Exception{
			List<Product> avglikeList = mainService.getAvglikeList();
			
			return avglikeList;
		}
}
