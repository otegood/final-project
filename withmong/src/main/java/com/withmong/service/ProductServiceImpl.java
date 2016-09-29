package com.withmong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.withmong.dao.ProductDao;
import com.withmong.form.BreadcrumbsForm;
import com.withmong.model.Category;
import com.withmong.model.Location;
import com.withmong.model.Product;
import com.withmong.model.ProductReview;
import com.withmong.model.User;

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
	public Product productDetail(int no) {
		return productDao.productDetail(no);
	}

	@Override
	public void addProductReview(ProductReview productReview) {
		
		productDao.addProductReview(productReview);
		
	}

	@Override
	public List<ProductReview> getAllProductReivew(int no) {
		return productDao.getAllProductReivew(no);
	}

	@Override
	public Category findCategoryByNo(int no) {
		return productDao.findCategoryByNo(no);
	}

	@Override
	public User getUserDetail(String name) {
		return productDao.getUserDetail(name);
	}

	@Override
	public List<Location> findLocation() {
		return productDao.findLocation();
	}

	@Override
	public List<Location> findLocalList(String city) {
		return productDao.findLocalList(city);
	}

	@Override
	public Location findLocationNo(Location location) {
		return productDao.findLocationNo(location);
	}

	@Override
	public Location getLocationByno(int no) {
		return productDao.getLocationByno(no);
	}

	@Override
	public BreadcrumbsForm getCrumbs(int no) {
		return productDao.getCrumbs(no);
	}

	@Override
	public List<Product> searchProduct(String search) {
		return productDao.searchProduct(search);
	}


}
