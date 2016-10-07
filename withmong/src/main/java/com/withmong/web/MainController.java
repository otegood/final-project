package com.withmong.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.withmong.model.Category;
import com.withmong.model.Criteria;
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
	
			
			return hits;
		
		}	

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
			
			return avglikelist;

}	
		/*
	//중앙 화면 뿌려주기?
		@RequestMapping(value="/displaylist.do", method=RequestMethod.GET)
		public String displaylist(Model model, Criteria criteria) throws Exception {
			
			//최근 등록한 상품
			List<Product> displaylist = mainService.getAvglikeList(criteria);
			
			model.addAttribute("displaylist", displaylist);

			return "main.do";
			
		}
		*/
	//이용 약관 확인
	@RequestMapping(value="/stipulation.do")
	public String stipulation() throws Exception {
		
		return "sidemain/stipulation";
		
	}
	
	//개인정보보호정책
	@RequestMapping(value="/privacy.do")
	public String privacy() throws Exception {
		
		return "sidemain/privacy";
		
	}
	
	////카테고리 번호 상품 가지고 오기 링크 관련 (임시)
	
	@RequestMapping(value="/categoryList.do")
	public String categoryList (@RequestParam(name="categoryNo") int no, Model model, Category category) throws Exception {
		
		category = mainService.getCategoryName(no);
		
		//user = mainService.getuserBycateno(no);
		
		List<Product> products = mainService.getCateproductList(no);
	
		// 카테고리 번호에 따른 상품 정보 조회
		model.addAttribute("products",products);
		model.addAttribute("category", category);
		//model.addAttribute("user", user);
		

		
		return "sidemain/categoryList";
		
		
	}
	
}
