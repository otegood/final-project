package com.withmong.model;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonFormat;

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
	private MultipartFile imgmul;
	
	private Location location;
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
	public String getShortTitle(){
		if (title == null) {
			return "[없음]";
		}
		if (title.length() > 14) {
			return title.substring(0, 12) + "...";
		} else {
			return title;
		}
	}
	public void setTitle(String title) {
		this.title = title;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
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

	@JsonFormat(pattern="yyyy-MM-dd")
	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public int getAvg() {
		if (avglike <= 1) {
			return 1;
		}
		return (int)Math.round(avglike);
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

	public Location getLocation() {
		return location;
	}

	public void setLocation(Location location) {
		this.location = location;
	}

	public Category  getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	
	
	public MultipartFile getImgmul() {
		return imgmul;
	}

	public void setImgmul(MultipartFile imgmul) {
		this.imgmul = imgmul;
	}

	@Override
	public String toString() {
		return "Product [no=" + no + ", title=" + title + ", userid=" + userid + ", img=" + img + ", video=" + video
				+ ", contents=" + contents + ", price=" + price + ", qty=" + qty + ", regDate=" + regDate + ", avglike="
				+ avglike + ", hits=" + hits + ", tag=" + tag + ", location=" + location + ", category=" + category
				+ "]";
	}

	
	
	
	
}
