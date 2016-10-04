package com.withmong.web;

import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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

import com.withmong.model.Criteria;
import com.withmong.model.Pagination;
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
	public @ResponseBody List<Product> recent (@RequestParam(name="no", required=false, defaultValue="1")int pageNo, 
														Criteria criteria) throws Exception{
	
		
		List<Product> recentList = new ArrayList<>();
		System.out.println("_________________________________________________");
		System.out.println("_________________________________________________");
		System.out.println("_________________________________________________");
		System.out.println("_________________________________________________");
		System.out.println(pageNo);
		System.out.println("_________________________________________________");
		System.out.println("_________________________________________________");
		System.out.println("_________________________________________________");
		// 페이지 번호가 1보다 작으면 1페이지로 리다이렉트
		if (pageNo < 1) {
			return recentList;
		}
		
		int rows = 12;
		int beginIndex = (pageNo - 1)*rows + 1;
		int endIndex = pageNo*rows;
		
		criteria = new Criteria();
		criteria.setBeginIndex(beginIndex);
		criteria.setEndIndex(endIndex);

		recentList = mainService.getRegList(criteria);
		System.out.println("_________________________________________________");
		System.out.println("_________________________________________________");
		System.out.println("_________________________________________________");
		System.out.println("_________________________________________________");
		System.out.println(pageNo);
		System.out.println("_________________________________________________");
		System.out.println("_________________________________________________");
		System.out.println("_________________________________________________");
		
		return recentList;
	
	}	
	//조회순 보기
		@RequestMapping(value="/hitslist.do", method=RequestMethod.GET)
		public @ResponseBody List<Product> hits (@RequestParam(name="no", required=false, defaultValue="1")int pageNo, 
															Criteria criteria) throws Exception{
		
			
			List<Product> hits = new ArrayList<>();
			
			// 페이지 번호가 1보다 작으면 1페이지로 리다이렉트
			if (pageNo < 1) {
				return hits;
			}
			
			int rows = 12;
			int beginIndex = (pageNo - 1)*rows + 1;
			int endIndex = pageNo*rows;
			
			criteria = new Criteria();
			criteria.setBeginIndex(beginIndex);
			criteria.setEndIndex(endIndex);

			hits = mainService.getHitList(criteria);
			System.out.println("_________________________________________________");
			System.out.println("_________________________________________________");
			System.out.println("_________________________________________________");
			System.out.println("_________________________________________________");
			System.out.println(pageNo);
			System.out.println("_________________________________________________");
			System.out.println("_________________________________________________");
			System.out.println("_________________________________________________");
			return hits;
		
		}	
		/*
	//인기순 보기
		@RequestMapping(value="/avglikelist.do", method=RequestMethod.GET)
		public @ResponseBody  List<Product> avglike (int no) throws Exception{
			List<Product> avglikeList = mainService.getAvglikeList();
			
			return avglikeList;
		}
	*/
		
		//인기순 보기
		@RequestMapping(value="/avglikelist.do", method=RequestMethod.GET)
		public @ResponseBody List<Product> avglikelist (@RequestParam(name="no", required=false, defaultValue="1")int pageNo, 
				Criteria criteria) throws Exception{

			
			List<Product> avglikelist = new ArrayList<>();
			
			// 페이지 번호가 1보다 작으면 1페이지로 리다이렉트
			if (pageNo < 1) {
			return avglikelist;
			}
			
			int rows = 12;
			int beginIndex = (pageNo - 1)*rows + 1;
			int endIndex = pageNo*rows;
			
			criteria = new Criteria();
			criteria.setBeginIndex(beginIndex);
			criteria.setEndIndex(endIndex);
			
			avglikelist = mainService.getAvglikeList(criteria);
			System.out.println("_________________________________________________");
			System.out.println("_________________________________________________");
			System.out.println("_________________________________________________");
			System.out.println("_________________________________________________");
			System.out.println(pageNo);
			System.out.println("_________________________________________________");
			System.out.println("_________________________________________________");
			System.out.println("_________________________________________________");
			return avglikelist;

}	
	
		
}
