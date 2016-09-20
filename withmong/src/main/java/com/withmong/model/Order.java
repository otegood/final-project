package com.withmong.model;

import java.util.Date;

public class Order {

	private int no;
	private Date regdate;
	private String buyCheck;
	private User userId;
	private Product productNo;
	
	public Order () {}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getBuyCheck() {
		return buyCheck;
	}
	public void setBuyCheck(String buyCheck) {
		this.buyCheck = buyCheck;
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
		return "Order [no=" + no + ", regdate=" + regdate + ", buyCheck=" + buyCheck + ", userId=" + userId
				+ ", productNo=" + productNo + "]";
	}
	
	
	
	
}
