package com.withmong.model;

import java.util.Date;

public class Order {

	private int no;
	private Date regdate;
	private String buyCheck;
	private User userid;
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
	public User getUserid() {
		return userid;
	}
	public void setUserid(User userid) {
		this.userid = userid;
	}
	public Product getProductNo() {
		return productNo;
	}
	public void setProductNo(Product productNo) {
		this.productNo = productNo;
	}
	
	@Override
	public String toString() {
		return "Order [no=" + no + ", regdate=" + regdate + ", buyCheck=" + buyCheck + ", userid=" + userid
				+ ", productNo=" + productNo + "]";
	}
	
	
	
	
}
