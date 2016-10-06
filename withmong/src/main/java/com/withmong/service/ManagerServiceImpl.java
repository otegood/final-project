package com.withmong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.withmong.dao.ManagerDao;
import com.withmong.model.Order;
import com.withmong.model.Point;
import com.withmong.model.Product;
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
}
