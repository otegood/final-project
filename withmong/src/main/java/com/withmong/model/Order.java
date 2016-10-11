package com.withmong.model;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Order {

	private int no;
	private Date regdate;
	private String buyCheck;
	private User userid;
	private Product productNo;
	private int qty;
	private int price;
	
	public Order () {}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	@JsonFormat(pattern="yyyy-MM-dd")
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
	
	
	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Order [no=" + no + ", regdate=" + regdate + ", buyCheck=" + buyCheck + ", userid=" + userid
				+ ", productNo=" + productNo + ", qty=" + qty + ", price=" + price + "]";
	}

	
	
	
	
	
}
