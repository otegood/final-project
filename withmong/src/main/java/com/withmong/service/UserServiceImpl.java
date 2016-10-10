package com.withmong.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import com.withmong.dao.UserDao;
import com.withmong.model.Cart;
import com.withmong.model.Order;
import com.withmong.model.Product;
import com.withmong.model.Report;
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

	// 아이디 찾기
	@Override
	public User findId(User user) {
		User findid = userDao.findId(user);
		return findid;
	}

	
	// 비밀번호 찾기
	@Override
	public User findInfoPassword(User user) {
		User findPw = userDao.findInfoPassword(user);
		return findPw;
	}

	// 비밀번호 분실후 변경
	@Override
	public void changePassword(User user) {
		userDao.changePassword(user);
	}

	// 내 정보 변경하기
	@Override
	public void myInfoModify(User user) {
		userDao.myInfoModify(user);
	}


	// 신고하기
	@Override
	public void report(Report report) {
		userDao.reportUser(report);
	}

	// 내 구매정보 보기
	@Override
	public List<Order> myPurchase(String purchaseId) {
	
		return userDao.myPurchase(purchaseId);
		
	}
	
	// 내 판매정보 보기
	@Override
	public List<Order> mySell(String sellId) {
		return userDao.mySell(sellId);
		
	}

	
	// 구매취소
	@Override
	public void cancelOrder(int orderNo) {
		// 주문정보 조회
		Order orderInfo = userDao.getOrderInfoByNo(orderNo);
		
		// 관리자 포인트 차감
		userDao.deductionAdminPoint(orderInfo.getProductNo().getPrice());
		
		// 구매자 포인트 증가
		userDao.increasePurchasePoint(orderInfo);
		
		// 구매정보 삭제
		userDao.deletePurchase(orderNo);
		
	}


	@Override
	public void denySell(int orderNo) {
		Order orderInfo = userDao.getOrderInfoByNo(orderNo);
		userDao.denySell(orderNo);
		userDao.getPlusQty(orderInfo);
	}

	
	@Override
	public void confirmSell(int orderNo) {
		// 주문 정보 조회
		Order orderInfo = userDao.getOrderInfoByNo(orderNo);
		
		// 관리자 포인트 차감
		userDao.getDevideAdminPoint(orderInfo.getProductNo().getPrice());
		// 판매자 포인트 증가
		userDao.getPointSeller(orderInfo);
		// 구분자 변경
		userDao.confirmSell(orderNo);
		
	}

	@Override
	public User getUserInfoById(String id) {
		
		return userDao.getUserById(id);
	}

	@Override
	public List<Product> getProductById(String id) {
		return userDao.getProductById(id);
	}
	
	// 아이디로 찜목록보기
	@Override
	public List<Cart> getCartById(String id) {
		return userDao.getCartById(id);
	}
	
	// 찜번호로 찜목록삭제하기
	@Override
	public void delCartByNo(int cartNo) {
		userDao.delCartByNo(cartNo);
	}
}







