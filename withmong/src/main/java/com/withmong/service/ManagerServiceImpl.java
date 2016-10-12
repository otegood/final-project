package com.withmong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.withmong.dao.ManagerDao;
import com.withmong.form.CountChartForm;
import com.withmong.form.ProfitForm;
import com.withmong.model.Order;
import com.withmong.model.Point;
import com.withmong.model.Product;
import com.withmong.model.Report;
import com.withmong.model.User;

@Service
public class ManagerServiceImpl implements ManagerService{

	@Autowired private ManagerDao managerDao;
	
	//유저 목록
	@Override
	public List<User> getAllUsers() {
		return managerDao.getAllUsers();
	}
	// 유저삭제처리
	@Override
	public void userDelete(String id) {
		managerDao.userDelete(id);
	}
	// 유저복구
	@Override
	public void userRestore(String id) {
		managerDao.userRestore(id);		
	}
	// 회원상세
	@Override
	public User getUserM(String id) {
		return managerDao.getUserM(id);
	}
	// 모든 포인트 목록
	@Override
	public List<Point> getAllPoints() {
		return managerDao.getAllPoints();
	}
	// 모든 상품 목록
	@Override
	public List<Product> getAllProducts() {
		return managerDao.getAllProduct();
	}
	// 모든 거래내역
	@Override
	public List<Order> getAllOrders() {
		return managerDao.getAllOrder();
	}
	// 상품삭제
	@Override
	public void deleteProduct(int no) {
		managerDao.productDelete(no);
	}
	// 상품댓글삭제
	@Override
	public void deleteProductReview(int no) {
		managerDao.productReviewDelete(no);
	}
	//---- 등급변경--------------------------------------------------------------
	@Override
	public void sclass(String id) {
		managerDao.userSClass(id);
	}
	@Override
	public void gclass(String id) {
		managerDao.userGClass(id);
	}
	@Override
	public void bclass(String id) {
		managerDao.userBClass(id);
	}
	// -------------------------------------------------------------------------
	// 주간 상품등록 수 차트
	@Override
	public List<CountChartForm> productChart() {
		return managerDao.getCountProductChart();
	}
	// 주간 주문 수 차트
	@Override
	public List<CountChartForm> orderChart() {
		return managerDao.getCountOrderChart();
	}
	// 신고 목록
	@Override
	public List<Report> getAllReport() {
		return managerDao.getAllReport();
	}
	
	// 수익목록
	@Override
	public List<ProfitForm> profitChart() {
		return managerDao.getProfitList();
	}
	// 카테고리별 상품목록
	@Override
	public List<Product> getProducts(int cno) {
		return managerDao.getProducts(cno);
	}
}
