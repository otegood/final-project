package com.withmong.model;

import java.util.Date;

public class Message {
	
	private int no;
	private String contents;
	private Date regdate;
	private String readCheck;
	private String sender;
	private String receiver;
	
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
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getReadCheck() {
		return readCheck;
	}
	public void setReadCheck(String readCheck) {
		this.readCheck = readCheck;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	@Override
	public String toString() {
		return "Message [no=" + no + ", contents=" + contents + ", regdate=" + regdate + ", readCheck=" + readCheck
				+ ", sender=" + sender + ", receiver=" + receiver + "]";
	}
	
	
}
