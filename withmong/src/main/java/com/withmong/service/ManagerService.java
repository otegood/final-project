package com.withmong.service;

import java.util.List;

import com.withmong.model.User;

public interface ManagerService {

	// 회원목록
		List<User> getAllUsers();
	// 회원상세
		User getUserM(String id);
	// 회원삭제
		void userDelete(String id);
	// 회원복구
		void userRestore(String id);
}
