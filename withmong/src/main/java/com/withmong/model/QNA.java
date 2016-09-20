package com.withmong.model;

import java.util.Date;

public class QNA {

	private int no;
	private String title;
	private User userId;
	private String contents;
	private Date regdate;
	private String delCheck;
	
	public QNA() {}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public User getUserId() {
		return userId;
	}
	public void setUserId(User userId) {
		this.userId = userId;
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
	public String getDelCheck() {
		return delCheck;
	}
	public void setDelCheck(String delCheck) {
		this.delCheck = delCheck;
	}

	@Override
	public String toString() {
		return "QNA [no=" + no + ", title=" + title + ", userId=" + userId + ", contents=" + contents + ", regdate="
				+ regdate + ", delCheck=" + delCheck + "]";
	}
	
	
}
