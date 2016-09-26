package com.withmong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.withmong.dao.PointDao;
import com.withmong.model.Point;
import com.withmong.model.User;

public class PointServiceImpl implements PointService {

	@Autowired PointDao pointDao;

	@Override
	//포인트 변경
	public void updateUserPoint(User user) {
		// TODO Auto-generated method stub
		pointDao.updateUserPoint(user);
		return;
	}

	@Override
	//포인트 내역 추가
	public void addPointHistory(Point point) {
		// TODO Auto-generated method stub
		pointDao.addPointHistory(point);
		return;	
	}

	@Override
	//포인트 내역 보기
	public List<Point> getPointList() {
		// TODO Auto-generated method stub
		return pointDao.getPointList();
	}

}
