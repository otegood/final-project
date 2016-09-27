package com.withmong.model;

import java.util.Date;

public class Point {

	
	private int charge;		// 충전
	private int withdraw;	// 출금
	private Date regdate;
	private User userid;
	
	public Point() {}

	public int getCharge() {
		return charge;
	}

	public void setCharge(int charge) {
		this.charge = charge;
	}

	public int getWithdraw() {
		return withdraw;
	}

	public void setWithdraw(int withdraw) {
		this.withdraw = withdraw;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public User getUserid() {
		return userid;
	}

	public void setUserid(User userid) {
		this.userid = userid;
	}

	@Override
	public String toString() {
		return "Point [charge=" + charge + ", withraw=" + withdraw + ", regdate=" + regdate + ", userid=" + userid + "]";
	}

	
}
