package com.withmong.model;

public class Cart {

	private int no;
	private User userId;
	private Product productNo;
	
	public Cart() {}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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
		return "Cart [no=" + no + ", userId=" + userId + ", productNo=" + productNo + "]";
	}
	
	
}
