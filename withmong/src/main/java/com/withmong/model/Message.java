package com.withmong.model;

import java.util.Date;

public class Message {
	
	private int no;
	private String contents;
	private Date senddate;
	private String readCheck;
	private User sender;
	private User receiver;
	
	public Message() {}
	
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
	public Date getSenddate() {
		return senddate;
	}
	public void setSenddate(Date senddate) {
		this.senddate = senddate;
	}
	public String getReadCheck() {
		return readCheck;
	}
	public void setReadCheck(String readCheck) {
		this.readCheck = readCheck;
	}
	public User getSender() {
		return sender;
	}
	public void setSender(User sender) {
		this.sender = sender;
	}
	public User getReceiver() {
		return receiver;
	}
	public void setReceiver(User receiver) {
		this.receiver = receiver;
	}
	@Override
	public String toString() {
		return "Message [no=" + no + ", contents=" + contents + ", senddate=" + senddate + ", readCheck=" + readCheck
				+ ", sender=" + sender + ", receiver=" + receiver + "]";
	}
}
