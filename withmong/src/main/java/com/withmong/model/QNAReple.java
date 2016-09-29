package com.withmong.model;

import java.util.Date;

public class QNAReple {

	private int no;
	private String contents;
	private Date regdate;
	private QNA boardNo;
	private User userId;
	
	public QNAReple () {}
	
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
	public QNA getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(QNA boardNo) {
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
		return "QNAReply [no=" + no + ", contents=" + contents + ", regdate=" + regdate + ", boardNo=" + boardNo
				+ ", userId=" + userId + "]";
	}
	
	
}
