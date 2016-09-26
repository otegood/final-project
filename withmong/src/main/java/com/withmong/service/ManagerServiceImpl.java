package com.withmong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.withmong.dao.ManagerDao;
import com.withmong.model.User;

@Service
public class ManagerServiceImpl implements ManagerService{

	@Autowired private ManagerDao managerDao;
	
	@Override
	public List<User> getAllUsers() {
		return managerDao.getAllUsers();
	}

	@Override
	public void userDelete(String id) {
		managerDao.userDelete(id);
	}

	@Override
	public void userRestore(String id) {
		managerDao.userRestore(id);		
	}

}
