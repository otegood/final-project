package com.withmong.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.withmong.model.Category;
import com.withmong.model.Criteria;
import com.withmong.model.Pagination;
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
														Criteria criteria, Model model) throws Exception{
	
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
	
		for(Product product : recentList) {
			 String title = product.getTitle();
			 
			if (title.length() > 15) {
				title = title.substring(0, 12)+"...";
				product.setTitle(title);
			}else{
				product.setTitle(title);				
			}
			
		}
		
	
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
	
			
			for(Product product : hits) {
				 String title = product.getTitle();
				 
				if (title.length() > 15) {
					title = title.substring(0, 12)+"...";
					product.setTitle(title);
				}else{
					product.setTitle(title);				
				}
				
			}
			
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
			
			for(Product product : avglikelist) {
				 String title = product.getTitle();
				 
				if (title.length() > 15) {
					title = title.substring(0, 12)+"...";
					product.setTitle(title);
				}else{
					product.setTitle(title);				
				}
				
			}
			
			return avglikelist;

}	
		
	
		
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
	
	//이용안내
	@RequestMapping(value="/siteinfo.do")
	public String siteinfo() throws Exception {
		
		return "sidemain/siteinfo";
		
	}
	
	
	//카테고리 번호 상품 가지고 오기  
	
	@RequestMapping(value="/categoryList.do")
	public String categoryList (
			@RequestParam(name="pno", required=false, defaultValue="1" ) int pno,
			Criteria criteria, Model model)  throws Exception {
		
			Category category = mainService.getCategoryName(criteria.getCategoryNo());
		
			// 페이지 번호가 1보다 작으면 1페이지로 리다이렉트
				
				if (pno < 1) {
					return "redirect:/categoryList.do?categoryNo="+ criteria.getCategoryNo()
							+ "&pno=1";
				}
				int rows = 4;
				int pages = 5;
				int beginIndex = (pno - 1)*rows + 1;
				int endIndex = pno*rows;
				
				// 전체 데이타 건수 조회하기
				int totalRows = mainService.getTotalRows(criteria);
				
				// 페이지 내비게이션 정보 생성하기
				Pagination pagination = new Pagination(rows, pages, pno, totalRows);
				
				// 페이지번호가 너무 크면 맨 마지막 페이지로 리다이렉트
				if (pno > pagination.getTotalPages()) {
					return "redirect:/categoryList.do?categoryNo="+ criteria.getCategoryNo() +"&pno="+pagination.getTotalPages();
				}
				
		
				
				// 데이타 조회하기
				criteria.setBeginIndex(beginIndex);
				criteria.setEndIndex(endIndex);
			
				System.out.println(beginIndex);
				System.out.println(endIndex);
				System.out.println(criteria.getCategoryNo());
				List<Product> products = mainService.getCategory(criteria);

				System.out.println("개수:"+products.size());
				
			
				// 카테고리 번호에 따른 상품 정보 조회
				model.addAttribute("products",products);
				model.addAttribute("navi", pagination);
				model.addAttribute("category", category);
	

		
				return "sidemain/categoryList";
		
		
	}
	
	//중앙 화면 뿌려주기?	
	@RequestMapping(value="/main.do", method=RequestMethod.GET)
	public String displaylist(Model model, Criteria criteria) throws Exception {

		criteria.setBeginIndex(1);
		criteria.setEndIndex(5);

		List<Product> displaylist = mainService.getRegList(criteria);

	
		model.addAttribute("displaylist", displaylist);
		
		return "main";
		
	}

	
}
