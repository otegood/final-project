package com.withmong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.withmong.dao.PointDao;
import com.withmong.model.Point;
import com.withmong.model.User;

@Service
public class PointServiceImpl implements PointService {

	@Autowired PointDao pointDao;

	@Override
	//포인트 내역 보기
	public List<Point> getPointList(String userid) {
		// TODO Auto-generated method stub
		return pointDao.getPointList(userid);
	}
	
	@Transactional
	public void Charge(User user, Point point) {
		//포인트 변경
		pointDao.updateUserPoint(user);
		//포인트 내역 추가
		pointDao.addPointHistory(point);
		
	}

	@Override
	public void updateUserPoint(User user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addPointHistory(Point point) {
		// TODO Auto-generated method stub
		
	}
	
}
