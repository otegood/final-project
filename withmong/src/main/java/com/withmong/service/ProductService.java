package com.withmong.service;


import java.util.List;

import com.withmong.form.BreadcrumbsForm;
import com.withmong.form.CountForm;
import com.withmong.form.SearchForm;
import com.withmong.model.Category;
import com.withmong.model.Criteria;
import com.withmong.model.Location;
import com.withmong.model.Order;
import com.withmong.model.Product;
import com.withmong.model.ProductReview;
import com.withmong.model.User;

public interface ProductService {
	
	void addProduct(Product product) throws Exception;
	List<Category> findCategory();
	Product productDetail(int no);
	
	void addProductReview(ProductReview productReview) throws Exception;
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
	void updateProduct(Product product)throws Exception;
	void deleteProduct(int no);
	void pointupdateUser(User user);
	void pointupdateAdmin(User user);
	List<Product> getSellerProducts(Product product);
	void productQtyupdate(Product product);
	void addCart(Product product);
	int getOrderCount(Product product);
	int getCartCount(Product product);
	int getRepleCount(Product product);
	int getProReplyCount(int no);
	int getTotalRows(SearchForm searchForm);

	
}
