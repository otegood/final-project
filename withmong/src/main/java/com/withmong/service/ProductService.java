package com.withmong.service;

import java.util.List;

import com.withmong.form.BreadcrumbsForm;
import com.withmong.form.CountForm;
import com.withmong.form.SearchForm;
import com.withmong.model.Category;
import com.withmong.model.Location;
import com.withmong.model.Order;
import com.withmong.model.Product;
import com.withmong.model.ProductReview;
import com.withmong.model.User;

public interface ProductService {
	
	void addProduct(Product product);
	List<Category> findCategory();
	Product productDetail(int no);
	
	void addProductReview(ProductReview productReview);
	List<ProductReview> getAllProductReivew(int no);
	Category findCategoryByNo(int no);
	
	User getUserDetail(String name);
	List<Location> findLocation();
	List<Location> findLocalList(String city);
	
	Location findLocationNo(Location location);
	Location getLocationByno(int no);
	BreadcrumbsForm getCrumbs(int no);
	List<Product> searchProduct(SearchForm searchForm);
	Product getProductByNo(int productNo);
	void addOrder(Order order);
	void updateHits(int no);
	void ProductReviewDel(int reviewNo);
	CountForm getCountandRow(int productNo);
	void updateAvglike(CountForm cf);
	
}
