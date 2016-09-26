package com.withmong.model;

import java.util.Date;

public class Point {

	private int charge;
	private Date regdate;
	private User id;
	private int withdraw;

	public Point () {}

	public int getCharge() {
		return charge;
	}

	public void setCharge(int charge) {
		this.charge = charge;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public User getId() {
		return id;
	}

	public void setId(User id) {
		this.id = id;
	}

	public int getWithdraw() {
		return withdraw;
	}

	public void setWithdraw(int withdraw) {
		this.withdraw = withdraw;
	}

	@Override
	public String toString() {
		return "Point [charge=" + charge + ", regdate=" + regdate + ", id=" + id + ", withdraw=" + withdraw + "]";
	}

	
	

	
}
