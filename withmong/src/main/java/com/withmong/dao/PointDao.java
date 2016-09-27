package com.withmong.dao;

import java.util.List;

import com.withmong.model.Point;
import com.withmong.model.User;

public interface PointDao {

	//포인트 변경
	void updateUserPoint(User user);
	//포인트 내역 추가
	void addPointHistory(Point point);
	//포인트 내역 보기
	List<Point> getPointList(String userid);
	
}
