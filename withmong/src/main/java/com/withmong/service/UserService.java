package com.withmong.service;

import java.util.Date;

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
	
	// 유저 정보 확인
	User findId(String name, Date birth, String phone);
}
