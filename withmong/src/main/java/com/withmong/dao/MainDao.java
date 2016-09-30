package com.withmong.dao;

import java.util.List;

import com.withmong.model.Criteria;
import com.withmong.model.Product;

public interface MainDao {

	//인기순 상품 내역 보기
	List<Product> getAvglikeList();
	//등록순 상품 내역 보기
	List<Product> getRegList();
	//조회순 상품 내역 보기
	List<Product> getHitList();
	
	
	//추가 상품 나타낼 개수
	int getTotalRows(Criteria criteria);
	//상품리스트 불러오기(통산?)
	List<Product> getProducts(Criteria criteria);
}
