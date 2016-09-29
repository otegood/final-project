package com.withmong.model;

import java.util.Date;

public class RequestReple {

	private int no;
	private String contents;
	private Date regdate;
	private Request boardNo;
	private User userId;
	
	public RequestReple() {}
	
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
	public Request getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(Request boardNo) {
		this.boardNo = boardNo;
	}
	public User getUserId() {
		return userId;
	}
	public void setUserId(User userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "RequestReply [no=" + no + ", contents=" + contents + ", regdate=" + regdate + ", boardNo=" + boardNo
				+ ", userId=" + userId + "]";
	}
	
	
}
