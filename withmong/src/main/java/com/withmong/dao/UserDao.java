package com.withmong.dao;

import java.util.Date;

import com.withmong.model.User;

public interface UserDao {

	//user 등록
	void insertUser(User user);
	User getUserById(String id);
	User getUserByPhone(String phone);
	User getChangePassword(User user);
	User findId(String name, Date birth, String phone);
}
