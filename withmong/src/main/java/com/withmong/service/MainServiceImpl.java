package com.withmong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.withmong.dao.MainDao;
import com.withmong.model.Category;
import com.withmong.model.Criteria;
import com.withmong.model.Product;
import com.withmong.model.User;


@Service

public class MainServiceImpl implements MainService {

	@Autowired MainDao mainDao;

	//인기순 상품 내역 보기
	@Override
	public List<Product> getAvglikeList(Criteria criteria) {
		// TODO Auto-generated method stub
		return mainDao.getAvglikeList(criteria);
	}

	
	//등록순 상품 내역 보기
	@Override
	public List<Product> getRegList(Criteria criteria) {
		// TODO Auto-generated method stub
		return mainDao.getRegList(criteria);
	}

	
	
	//조회순 상품 내역 보기
	@Override
	public List<Product> getHitList(Criteria criteria) {
		// TODO Auto-generated method stub
		return mainDao.getHitList(criteria);
	}

	//전체 목록 개수?
	@Override
	public int getTotalRows(Criteria criteria) {
		// TODO Auto-generated method stub
		return mainDao.getTotalRows(criteria);
	}


	//카테고리 번호에 해당하는 카테고리 이름 불러오기
	@Override
	public Category getCategoryName(int no) {
		// TODO Auto-generated method stub
		return mainDao.getCategoryName(no);
	}

	//카테고리 번호에 해당하는 상품 불러오기
	@Override
	public List<Product> getCategory(Criteria criteria) {
		// TODO Auto-generated method stub
		return mainDao.getCategory(criteria);
	}



	

	
	
	

	

	

	
	

	
	
	

	
	
}
