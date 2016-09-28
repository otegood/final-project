package com.withmong.dao;


import com.withmong.model.Order;
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

	// 내 구매내역 확인하기
	Order myPurchase(String purchaseId);
	// 내 판매내역 확인하기
	//Order mySell(String userid);
	

	
}
