package com.withmong.dao;

import java.util.List;

import com.withmong.model.Point;
import com.withmong.model.Product;
import com.withmong.model.User;

public interface ManagerDao {

	//회원목록 (관리자페이지)
	List<User> getAllUsers();

	//회원 상세정보(아이디)
	User getUserM(String id);
	
	//회원 계정삭제처리
	void userDelete(String id);
	
	//회원 계정복구처리
	void userRestore(String id);
	
	//모든 포인트 충전/출근내역
	List<Point> getAllPoints();
	
	//모든 상품 목록 
	List<Product> getAllProduct();
	
}
