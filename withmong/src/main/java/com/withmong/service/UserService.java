package com.withmong.service;

import com.withmong.model.User;

public interface UserService {

	// 가입하기
	void register(User user);
	
	// 로그인 하기
	User login(String id, String password);
	
	// 유저 중복 체크하기
	User idCheck(String id);
	
	// 전화번호 중복 체크하기
	User phoneCheck(String phone);
}
