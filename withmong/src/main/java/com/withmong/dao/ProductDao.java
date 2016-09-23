package com.withmong.dao;

import java.util.List;

import com.withmong.model.Category;
import com.withmong.model.Product;

public interface ProductDao {

	void addProduct(Product product);
	List<Category> findCategory();
 	Product productDetail();
}
