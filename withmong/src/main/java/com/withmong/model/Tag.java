package com.withmong.model;

public class Tag {

	private Product productNo;
	private String tagName;
	
	public Tag () {}
	
	public Product getProductNo() {
		return productNo;
	}
	public void setProductNo(Product productNo) {
		this.productNo = productNo;
	}
	public String getTagName() {
		return tagName;
	}
	public void setTagName(String tagName) {
		this.tagName = tagName;
	}
	
	@Override
	public String toString() {
		return "Tag [productNo=" + productNo + ", tagName=" + tagName + "]";
	}
	
	
}
