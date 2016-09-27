package com.withmong.service;


import com.withmong.model.Report;
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
	User findId(User user);
	
	// 비밀번호 정보 확인
	User findInfoPassword(User user);
	
	// 비밀번호 분실 후 변경
	void changePassword(User user);
	
	// 내 정보 변경
	void myInfoModify(User user);
	
	// 신고하기
	void report(Report report);
}
