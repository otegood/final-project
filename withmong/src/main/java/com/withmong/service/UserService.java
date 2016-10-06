package com.withmong.service;


import java.util.List;

import com.withmong.model.Cart;
import com.withmong.model.Order;
import com.withmong.model.Product;
import com.withmong.model.Report;
import com.withmong.model.User;

public interface UserService {

	// 가입하기
	void register(User user);
	
	// 로그인 하기
	User login(String id, String password);
	
	// 유저 중복 체크하기
	User idCheck(String id);
	
	// 전화번호 중복 체크하기
	User phoneCheck(String phone);
	
	// 유저 정보 확인
	User findId(User user);
	
	// 비밀번호 정보 확인
	User findInfoPassword(User user);
	
	// 비밀번호 분실 후 변경
	void changePassword(User user);
	
	// 내 정보 변경
	void myInfoModify(User user);

	// 신고하기
	void report(Report report);

	
	// 내 구매 정보 보기
	List<Order> myPurchase(String purchaseId);

	// 내 판매 정보 보기
	List<Order> mySell(String sellId);

	// (구매)구매취소
	void cancelOrder(int orderNo);
	
	// (판매)판매 거부
	void denySell(int orderNo);
	
	// (판매)판매 확정
	void confirmSell(int orderNo);
	
	// 아이디로 유저정보 보기
	User getUserInfoById(String id);
	
	// 아이디로 판매목록 보기
	List<Product> getProductById(String id);
	
	// 아이디로 찜목록 보기
	List<Cart> getCartById(String id);
}
