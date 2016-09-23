package com.withmong.service;

import java.util.List;

import com.withmong.model.Category;
import com.withmong.model.Product;
import com.withmong.model.ProductReview;

public interface ProductService {
	
	void addProduct(Product product);
	List<Category> findCategory();
	Product productDetail();
	
	void addProductReview(ProductReview productReview);
	List<ProductReview> getAllProductReivew();
	
}
