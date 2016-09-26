package com.withmong.model;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class ProductReview {
	
	private int no;
	private double score;
	private String contents;
	private Date regdate;
	
	private String userId;
	private int productNo;
	
	public ProductReview(){}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public double getScore() {
		return score;
	}

	public void setScore(double score) {
		this.score = score;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	@JsonFormat(pattern="yyyy-MM-dd")
	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	
	
	
}
