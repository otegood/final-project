package com.withmong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.withmong.dao.PointDao;
import com.withmong.dao.UserDao;
import com.withmong.model.Point;
import com.withmong.model.User;

@Service
@Transactional
public class PointServiceImpl implements PointService {

	@Autowired PointDao pointDao;

	@Override
	//포인트 내역 보기
	public List<Point> getPointList(String userid) {
		// TODO Auto-generated method stub
		return pointDao.getPointList(userid);
	}
	//충전하기
	@Override
	public void charge(String id, int chargePoint) {
		User user = new User();
		user.setId(id);
		user.setPoint(chargePoint);
		
		Point point = new Point();
		point.setCharge(chargePoint);
		point.setUserid(user);
		
		//포인트 변경
		pointDao.updateUserPoint(user);
		//포인트 내역 추가
		pointDao.addPointHistory(point);
		
	}

	//환전하기
	@Override
	public void withdraw(String id, int withdrawPoint) {
		User user = new User();
		user.setId(id);
		user.setPoint((-1)*withdrawPoint);
		
		Point point = new Point();
		point.setWithdraw(withdrawPoint);
		point.setUserid(user);
		
		//포인트 변경2
		pointDao.updateUserPoint(user);
		//환급 내역 추가
		pointDao.addPointHistory(point);
	}

	



}
