package com.withmong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.withmong.dao.MainDao;
import com.withmong.model.Product;


@Service

public class MainServiceImpl implements MainService {

	@Autowired MainDao mainDao;

	//인기순 상품 내역 보기
	@Override
	public List<Product> getAvglikeList() {
		// TODO Auto-generated method stub
		return getAvglikeList();
	}
	//등록순 상품 내역 보기
	@Override
	public List<Product> getRegList() {
		// TODO Auto-generated method stub
		return getRegList();
	}
	//조회순 상품 내역 보기
	@Override
	public List<Product> getHitList() {
		// TODO Auto-generated method stub
		return getHitList();
	}

	

	

	
	

	
	
	

	
	
}
