package com.withmong.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.withmong.dao.PointDao;
import com.withmong.model.Point;
import com.withmong.model.User;

public interface PointService {

	// 충전하기
	void charge(String id, int point);
	
	//포인트 내역 보기
	List<Point> getPointList(String userid);
	
	// 환전하기
	void withdraw(String id, int point);
}

