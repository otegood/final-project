package com.withmong.model;

public class Category {
	
	private int no;
	private String name;
	
	private int bNo;
	
	public Category(){}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getbNo() {
		return bNo;
	}

	public void setbNo(int bNo) {
		this.bNo = bNo;
	}

	@Override
	public String toString() {
		return "Category [no=" + no + ", name=" + name + ", bNo=" + bNo + "]";
	}
	
	
}
