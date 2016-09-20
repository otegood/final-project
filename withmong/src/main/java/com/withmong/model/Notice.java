package com.withmong.model;

import java.util.Date;

public class Notice {

	private int no;
	private String title;
	private String contents;
	private Date regdate;
	
	public Notice () {}
	
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
	
	@Override
	public String toString() {
		return "Notice [no=" + no + ", title=" + title + ", contents=" + contents + ", regdate=" + regdate + "]";
	}
	
	
}
