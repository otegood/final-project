package com.withmong.model;

import java.util.Date;

public class Product {

	private int no;
	private String title;
	private String userId;
	private String img;
	private String video;
	private String contents;
	private int price;
	private int qty;
	private Date regDate;
	private double avglike;
	private int hits;
	private String tag;
	
	private Location locationNo;
	private Category categoryNo;
	
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
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
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

	public Location getLocationNo() {
		return locationNo;
	}

	public void setLocationNo(Location locationNo) {
		this.locationNo = locationNo;
	}

	public Category getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(Category categoryNo) {
		this.categoryNo = categoryNo;
	}
	
	
	
}
