package com.withmong.form;

public class ProfitForm {
	
	private double profit;
	private String regdate;
	
	public double getProfit() {
		return profit;
	}
	public void setProfit(double profit) {
		this.profit = profit;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "ProfitForm [profit=" + profit + ", regdate=" + regdate + "]";
	}
	
	
	
}
