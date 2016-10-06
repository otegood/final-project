package com.withmong.dao;


import java.util.List;

import com.withmong.model.Cart;
import com.withmong.model.Order;
import com.withmong.model.Product;
import com.withmong.model.Report;
import com.withmong.model.User;

public interface UserDao {

	//user 등록
	void insertUser(User user);
	User getUserById(String id);
	User getUserByPhone(String phone);
	//아이디 찾기
	User findId(User user);
	//비밀번호 찾기
	User findInfoPassword(User user);
	// 비밀번호 변경
	void changePassword(User user);
	// 내 정보 변경
	void myInfoModify(User user);

	// 신고하기
	void reportUser(Report report);

	// Order 등록
	void insertOrder(Order order);
	
	// 내 구매내역 확인하기
	List<Order> myPurchase(String purchaseId);
	// 내 판매내역 확인하기
	List<Order> mySell(String sellId);
	
	// 구매내역 기능
		// 1) 내 구매내역 삭제하기
		void deletePurchase(int no);
		
		// 2) 상품가격확인하는 select 문
		Order getOrderInfoByNo(int no);
		
		// 3) 관리자에서 포인트 차감 update 문
		void deductionAdminPoint(int point);
		
		// 4) 구매자 포인트 증가 update 문
		void increasePurchasePoint(Order order);
	
	// 판매내역 기능
		// 1) 구매 거부
		void denySell(int no);
		
		// 1) 관리자에서 포인트차감
		void getDevideAdminPoint(int point);
		// 2) 판매자 포인트 증가
		void getPointSeller(Order order);
		// 3) 상품 가격확인하는 select문 (위에있음)
		// 4) 확정 구분자 변경
		void confirmSell(int no);
	
		
	//아이디에 따라 상품정보 꺼내오기
	List<Product> getProductById(String id);
	
	//나의 찜목록 확인하기
	List<Cart> getCartById(String id);
}
