package com.withmong.service;

import com.withmong.model.User;

public interface UserService {

	// 가입하기
	void register(User user);
	
	// 로그인 하기
	User login(String id, String password);
}
