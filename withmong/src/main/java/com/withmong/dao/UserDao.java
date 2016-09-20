package com.withmong.dao;

import com.withmong.model.User;

public interface UserDao {

	//user 등록
		void insertUser(User user);
		User getUserById(String id);
}
