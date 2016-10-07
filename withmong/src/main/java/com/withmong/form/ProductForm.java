package com.withmong.form;



import com.withmong.model.Category;
import com.withmong.model.Location;

public class ProductForm {
	
	private String no;
	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	private String title;
	private String video;
	private String contents;
	private int price;
	private int qty;
	private String tag;
	
	private String img;

	
	private Location location;
	private Category category;
	
	public ProductForm(){}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	@Override
	public String toString() {
		return "ProductForm [no=" + no + ", title=" + title + ", video=" + video + ", contents=" + contents + ", price="
				+ price + ", qty=" + qty + ", tag=" + tag + ", img=" + img + ", location=" + location + ", category="
				+ category + "]";
	}




	
	
}
