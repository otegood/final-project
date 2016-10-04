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
	
	//해당 태그의 상품 내역 추가?
		@RequestMapping(value="/addmainlist.do", method=RequestMethod.GET)
		public @ResponseBody  List<Product> addlist (Criteria criteria, @RequestParam(name="pno", required=false, defaultValue="1") int pageNo, Model model) throws Exception{
			
			List<Product> results = new ArrayList<>();
			
			
			if(pageNo < 1) {
				return results;
			}
			
			int rows = 12;
			int pages = 5;
			int beginIndex = (pageNo - 1)*rows + 1;
			int endIndex = pageNo*rows;
			
			// 전체 데이타 건수 조회하기
			int totalRows = mainService.getTotalRows(criteria);
		
	
			// 데이타 조회하기
			criteria.setBeginIndex(beginIndex);
			criteria.setEndIndex(endIndex);
			List<Product> addlist = mainService.getProducts(criteria);
			System.out.println("----------------------------------------");
			System.out.println("----------------------------------------");
			System.out.println("----------------------------------------");
			System.out.println("----------------------------------------");
			System.out.println("----------------------------------------");
			System.out.println("----------------------------------------");
			
			
			return addlist;
		}
		
	
}
