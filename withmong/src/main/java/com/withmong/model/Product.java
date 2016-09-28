package com.withmong.model;

import java.util.Date;

public class Product {

	private int no;
	private String title;
	
	private String userid;
	
	private String img;
	private String video;
	private String contents;
	private int price;
	private int qty;
	private Date regDate;
	private double avglike;
	private int hits;
	private String tag;
	
	private int locationNo;
	private Category category;
	
	public Product(){}

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

	public String getUserId() {
		return userid;
	}

	public void setUserId(String userid) {
		this.userid = userid;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getVideo() {
		return video;
	}

	public void setVideo(String video) {
		this.video = video;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public double getAvglike() {
		return avglike;
	}

	public void setAvglike(double avglike) {
		this.avglike = avglike;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public int getLocationNo() {
		return locationNo;
	}

	public void setLocationNo(int locationNo) {
		this.locationNo = locationNo;
	}

	public Category  getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "Product [no=" + no + ", title=" + title + ", userid=" + userid + ", img=" + img + ", video=" + video
				+ ", contents=" + contents + ", price=" + price + ", qty=" + qty + ", regDate=" + regDate + ", avglike="
				+ avglike + ", hits=" + hits + ", tag=" + tag + ", locationNo=" + locationNo + ", category=" + category
				+ "]";
	}

	
	
	
	
}
