package com.withmong.service;

import java.util.List;

import com.withmong.model.Order;
import com.withmong.model.Point;
import com.withmong.model.Product;
import com.withmong.model.User;

public interface ManagerService {

	// 회원목록
		List<User> getAllUsers();
	// 회원상세
		User getUserM(String id);
	// 회원삭제
		void userDelete(String id);
	// 회원복구
		void userRestore(String id);
	// 모든 포인트 목록
		List<Point> getAllPoints();
	// 모든 상품 목록
		List<Product> getAllProducts();
	// 모든 거래내역
		List<Order> getAllOrders();
	// 상품삭제
		void deleteProduct(int no);
		// 관련댓글 삭제
		void deleteProductReview(int no);
	// 등급변경 
		void sclass(String id);
		void gclass(String id);
		void bclass(String id);
}
