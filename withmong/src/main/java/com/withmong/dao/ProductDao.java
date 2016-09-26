package com.withmong.dao;

import java.util.List;

import com.withmong.model.Category;
import com.withmong.model.Product;
import com.withmong.model.ProductReview;

public interface ProductDao {

	void addProduct(Product product);
	List<Category> findCategory();
 	Product productDetail(int no);
	void addProductReview(ProductReview productReview);
	List<ProductReview> getAllProductReivew();
}
