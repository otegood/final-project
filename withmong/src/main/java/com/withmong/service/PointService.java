package com.withmong.service;

import java.util.List;

import com.withmong.model.Point;
import com.withmong.model.User;

public interface PointService {

	//포인트 변경
	void updateUserPoint(User user);
	//포인트 내역 추가
	void addPointHistory(Point point);
	
	//포인트 내역 보기
	List<Point> getPointList(String userId);
	
}
