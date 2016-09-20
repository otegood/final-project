package com.withmong.model;

import java.util.Date;

public class ProductReply {

	private int no;
	private String contents;
	private Date regdate;
	
	private Product productNo;
	private User userId;
	
	public ProductReply() {}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public Product getProductNo() {
		return productNo;
	}
	public void setProductNo(Product productNo) {
		this.productNo = productNo;
	}
	public User getUserId() {
		return userId;
	}
	public void setUserId(User userId) {
		this.userId = userId;
	}
	
	@Override
	public String toString() {
		return "ProductReply [no=" + no + ", contents=" + contents + ", regdate=" + regdate + ", productNo=" + productNo
				+ ", userId=" + userId + "]";
	}
	
	
	
	
}
