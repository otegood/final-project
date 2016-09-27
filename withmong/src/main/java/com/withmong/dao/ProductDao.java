package com.withmong.dao;

import java.util.List;

import com.withmong.model.Category;
import com.withmong.model.Product;
import com.withmong.model.ProductReview;
import com.withmong.model.User;

public interface ProductDao {

	void addProduct(Product product);
	List<Category> findCategory();
 	Product productDetail(int no);
	void addProductReview(ProductReview productReview);
	List<ProductReview> getAllProductReivew(int no);
	Category findCategoryByNo(int no);
	User getUserDetail(String name);
	
}
