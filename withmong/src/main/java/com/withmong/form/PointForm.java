package com.withmong.form;

import java.util.Date;

import com.withmong.model.User;

public class PointForm {

	private int charge;		//충전
	private int withraw;	//출금
	private Date regdate;
	private User userId;
	
	public PointForm() {}

	
	
	public int getCharge() {
		return charge;
	}



	public void setCharge(int charge) {
		this.charge = charge;
	}



	public int getWithraw() {
		return withraw;
	}



	public void setWithraw(int withraw) {
		this.withraw = withraw;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public User getUserid() {
		return userId;
	}

	public void setUserid(User userid) {
		this.userId = userid;
	}



	@Override
	public String toString() {
		return "PointForm [charge=" + charge + ", withraw=" + withraw + ", regdate=" + regdate + ", userid=" + userId
				+ "]";
	}

	
	
	
}
