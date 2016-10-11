package com.withmong.dao;

import java.util.List;

import com.withmong.model.Category;
import com.withmong.model.Criteria;
import com.withmong.model.Product;
import com.withmong.model.User;

public interface MainDao {

	//인기순 상품 내역 보기
	List<Product> getAvglikeList(Criteria criteria);
	//등록순 상품 내역 보기
	List<Product> getRegList(Criteria criteria);
	//조회순 상품 내역 보기
	List<Product> getHitList(Criteria criteria);
	
	// 종합 개수 조회
	int getTotalRows(Criteria criteria);

	
	//카테고리 번호에 해당하는 카테고리 이름 얻기
	Category getCategoryName(int no);

	//카테고리 번호 상품 가지고 오기 관련
	List<Product> getCategory(Criteria criteria);
}
