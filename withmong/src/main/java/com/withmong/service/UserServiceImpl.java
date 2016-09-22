package com.withmong.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import com.withmong.dao.UserDao;
import com.withmong.model.User;

@Service
public class UserServiceImpl implements UserService{

	@Autowired private UserDao userDao;
	
	// 회원 등록하기
	@Override
	public void register(User user) {
		User savedUser = userDao.getUserById(user.getId());
		
		if(savedUser != null){
			throw new RuntimeException("이미 사용중인 아이디 입니다.");
		}
		
		userDao.insertUser(user);
	}
	
	// 로그인 하기
	@Override
	public User login(String id, String password) {

		User savedUser = userDao.getUserById(id);
		
		if (savedUser == null) {
			throw new RuntimeException("아이디 혹은 비밀번호가 올바르지 않습니다.");
		}
		
		String secretPassword = DigestUtils.md5DigestAsHex(password.getBytes());
		if(!savedUser.getPassword().equals(secretPassword)){
			throw new RuntimeException("아이디 혹은 비밀번호가 올바르지 않습니다.");
		}
		return savedUser;
	}

	// 유저 체크하기
	@Override
	public User idCheck(String id) {
		User checkId = userDao.getUserById(id);
		return checkId;
	}

	// 전화번호 체크하기
	@Override
	public User phoneCheck(String phone) {
		User checkPhone = userDao.getUserByPhone(phone);
		return checkPhone;
	}
}







