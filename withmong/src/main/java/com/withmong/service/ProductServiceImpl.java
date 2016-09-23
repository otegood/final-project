package com.withmong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.withmong.dao.ProductDao;
import com.withmong.model.Category;
import com.withmong.model.Product;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductDao productDao;
	
	@Override
	public void addProduct(Product product) {

		productDao.addProduct(product);
		
	}

	@Override
	public List<Category> findCategory() {
		return productDao.findCategory();
	}

	@Override
	public Product productDetail() {
		return productDao.productDetail();
	}
}
