package com.withmong.model;

import java.util.Date;

public class Report {

	private int no;
	private String contents;
	private Date regdate;
	private String reason;
	private User reporter;
	private User suspect;
	
	public Report() {}
	
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
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public User getReporter() {
		return reporter;
	}
	public void setReporter(User reporter) {
		this.reporter = reporter;
	}
	public User getSuspect() {
		return suspect;
	}
	public void setSuspect(User suspect) {
		this.suspect = suspect;
	}

	@Override
	public String toString() {
		return "Report [no=" + no + ", contents=" + contents + ", regdate=" + regdate + ", reason=" + reason
				+ ", reporter=" + reporter + ", suspect=" + suspect + "]";
	}
	

	
	
}
