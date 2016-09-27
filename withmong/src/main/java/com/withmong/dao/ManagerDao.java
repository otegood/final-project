package com.withmong.dao;

import java.util.List;

import com.withmong.model.User;

public interface ManagerDao {

	//회원목록 (관리자페이지)
	List<User> getAllUsers();

	//회원 상세정보(아이디)
	User getUserM(String id);
	
	//회원 계정삭제처리
	void userDelete(String id);
	
	//회원 계정복구처리
	void userRestore(String id);
	
}
