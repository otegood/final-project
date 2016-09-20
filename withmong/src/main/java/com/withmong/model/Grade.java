package com.withmong.model;

public class Grade {

	private int no;
	private int score;
	private User userId;
	private Product productNo;
	
	public Grade() {}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public User getUserId() {
		return userId;
	}
	public void setUserId(User userId) {
		this.userId = userId;
	}
	public Product getProductNo() {
		return productNo;
	}
	public void setProductNo(Product productNo) {
		this.productNo = productNo;
	}
	
	@Override
	public String toString() {
		return "Grade [no=" + no + ", score=" + score + ", userId=" + userId + ", productNo=" + productNo + "]";
	}
	
	
}
