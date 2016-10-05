package com.withmong.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.withmong.dao.PointDao;
import com.withmong.model.Criteria;
import com.withmong.model.Point;
import com.withmong.model.Product;
import com.withmong.model.User;

public interface MainService {

	//인기순 상품 내역 보기
	List<Product> getAvglikeList(Criteria criteria);

		
	//등록순 상품 내역 보기
	List<Product> getRegList(Criteria criteria);
	
		
	//조회순 상품 내역 보기
	List<Product> getHitList(Criteria criteria);
	
	
	
	// 종합 개수 조회
	int getTotalRows(Criteria criteria);

}

