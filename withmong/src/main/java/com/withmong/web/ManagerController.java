package com.withmong.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.withmong.form.CountChartForm;
import com.withmong.form.ProfitForm;
import com.withmong.model.Order;
import com.withmong.model.Point;
import com.withmong.model.Product;
import com.withmong.model.Report;
import com.withmong.model.User;
import com.withmong.service.BoardService;
import com.withmong.service.ManagerService;

@Controller
public class ManagerController {

	@Autowired private ManagerService managerService;
	@Autowired private BoardService boardService;
	
	@ExceptionHandler(RuntimeException.class)
	public String runtimeExceptionHandler(RuntimeException ex) {
		ex.printStackTrace();
		return "error/error";
	}
	
	//관리자 메인 접속
	@RequestMapping("/mmain.do")
	public String mmain(Model model, User loginedUser) throws Exception{
		
		String url = "";
		List<User> userList = managerService.getAllUsers();  
		model.addAttribute("userList", userList);
		
		model.addAttribute("noticelist", boardService.noticeList() );
		model.addAttribute("qnalist", boardService.qnaList());
		model.addAttribute("requestlist", boardService.requestList() );
		model.addAttribute("pointList", managerService.getAllPoints());
		model.addAttribute("productList", managerService.getAllProducts());
		model.addAttribute("orderList", managerService.getAllOrders());
		model.addAttribute("reportList", managerService.getAllReport());
		List<CountChartForm> productChart = managerService.productChart();
		List<CountChartForm> orderChart = managerService.orderChart();
		List<ProfitForm> profitChart = managerService.profitChart();
		// 오브젝트를 스트링으로 바꿔줌
		ObjectMapper mapper = new ObjectMapper();
		String pjsonString = mapper.writeValueAsString(productChart);
		String ojsonString = mapper.writeValueAsString(orderChart);
		String profitjsonString = mapper.writeValueAsString(profitChart);
		model.addAttribute("productChart",pjsonString );
		model.addAttribute("orderChart", ojsonString);
		model.addAttribute("profitChart", profitjsonString);
		if(loginedUser.getId().equals("king")){
			url = "mmain"; 
		}else{
			url = "main";
		}
		return url;
	}

	//유저 목록조회
	@RequestMapping("/userlist.do")
	public String messagelist(Model model) {
		List<User> userList = managerService.getAllUsers();  
		model.addAttribute("userList", userList);
		return "manager/userlist";
	}
	//유저 상세조회
	@RequestMapping("/userdetailm.do")
	public String userdetailm(Model model, @RequestParam(name="id") String id) {
		model.addAttribute("userdetail",managerService.getUserM(id));
		return "manager/userdetailm";
	}
	
	//유저 계정삭제 처리
	@RequestMapping("/deleteUser.do")
	public String userDelete(@RequestParam(name="id") String id){
		managerService.userDelete(id);
		return "redirect:/userlist.do";
	}
	
	//유저 계정복구 처리
	@RequestMapping("/restoreUser.do")
	public String userRestore(@RequestParam(name="id") String id){
		managerService.userRestore(id);
		return "redirect:/userlist.do";
	}
	
	// 전체 포인트 충전/출금내역 목록
	@RequestMapping("/allPointList.do")
	public String pointList(Model model) {
		List<Point> pointList = managerService.getAllPoints();  
		model.addAttribute("pointList", pointList);
		return "manager/pointlist";
	}
	// 전체 상품 목록
	@RequestMapping("/allProductList.do")
	public String productList(Model model) {
		List<Product> productList = managerService.getAllProducts();  
		model.addAttribute("productList", productList);
		return "manager/productlistm";
	}
	// 거래내역 
	@RequestMapping("/allOrderList.do")
	public String orderList(Model model) {
		List<Order> orderList = managerService.getAllOrders();  
		model.addAttribute("orderList", orderList);
		return "manager/orderlistm";
	}
	// 상품삭제
	@RequestMapping("/deleteProductm.do")
	public String productDelete(@RequestParam(name="no") int no){
		managerService.deleteProduct(no);
		managerService.deleteProductReview(no);
		return "redirect:/allProductList.do";
	}
	
	//등급 변경 Silver
	@RequestMapping("/sclass.do")
	public String sclass(@RequestParam(name="id") String id){
		managerService.sclass(id);
		return "redirect:/userlist.do";
	}
	//등급 변경 Gold
	@RequestMapping("/gclass.do")
	public String gclass(@RequestParam(name="id") String id){
		managerService.gclass(id);
		return "redirect:/userlist.do";
	}
	//등급 변경 Bronz
	@RequestMapping("/bclass.do")
	public String bclass(@RequestParam(name="id") String id){
		managerService.bclass(id);
		return "redirect:/userlist.do";
	}
	
	// 신고목록
	@RequestMapping("/reportList.do")
	public String reportList(Model model) {
		List<Report> reportList = managerService.getAllReport();  
		model.addAttribute("reportList", reportList);
		return "manager/reportlist";
	}
	// 카테고리 별 상품목록
	@RequestMapping("/productlist.do")
	public String productList(@RequestParam(name="cno") int cno, Model model) {
		List<Product> products = managerService.getProducts(cno);  
		model.addAttribute("products", products);
		return "manager/categoryproductlistm";
	}
}