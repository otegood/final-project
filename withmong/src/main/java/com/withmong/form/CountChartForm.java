package com.withmong.form;

public class CountChartForm {
	
	private int count;
	private String regdate;
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	@Override
	
	public String toString() {
		return "CountChartForm [count=" + count + ", regdate=" + regdate + "]";
	}
	
	
}
