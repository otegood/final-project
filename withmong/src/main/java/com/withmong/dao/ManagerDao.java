package com.withmong.dao;

import java.util.List;

import com.withmong.model.User;

public interface ManagerDao {

	//회원목록 (관리자페이지)
	List<User> getAllUsers();
}
