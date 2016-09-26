package com.withmong.dao;

import java.util.List;

import com.withmong.model.User;

public interface UserDao {

	//user 등록
	void insertUser(User user);
	User getUserById(String id);
	User getUserByPhone(String phone);
	//아이디 찾기
	User findId(User user);
	//비밀번호 찾기
	User findInfoPassword(User user);
	// 비밀번호 변경
	void changePassword(User user);
	
	//회원목록 (관리자페이지)
	List<User> getAllUsers();
}
