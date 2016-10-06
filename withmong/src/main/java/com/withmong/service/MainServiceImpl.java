package com.withmong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.withmong.dao.MainDao;
import com.withmong.model.Criteria;
import com.withmong.model.Product;


@Service

public class MainServiceImpl implements MainService {

	@Autowired MainDao mainDao;
/*
	//인기순 상품 내역 보기
	@Override
	public List<Product> getAvglikeList(Criteria criteria) {
		// TODO Auto-generated method stub
		List<Product> list = null;
		
		try{
			list = mainDao.getAvglikeList(Criteria criteria);
			
		}catch(Exception e){
			System.out.println(e.toString());
		}
		
		
		return list;
	}
	//등록순 상품 내역 보기
	@Override
	public List<Product> getRegList(Criteria criteria) {
		// TODO Auto-generated method stub
		List<Product> list = null;
		
		try{
			list = mainDao.getRegList(Criteria criteria);
			
		}catch(Exception e){
			System.out.println(e.toString());
		}
		
		
		return list;
	}
	//조회순 상품 내역 보기
	@Override
	public List<Product> getHitList(Criteria criteria) {
		List<Product> list = null;
		
		try{
			list = mainDao.getHitList(Criteria criteria);
			
		}catch(Exception e){
			System.out.println(e.toString());
		}
		
		
		return list;
	}
*/	
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


	//카테고리 관련 링크따오기?
	@Override
	public List<Product> getCateproductList(int no) {
		// TODO Auto-generated method stub
		return mainDao.getCateproductList(no);
	}

	

	
	
	

	

	

	
	

	
	
	

	
	
}
