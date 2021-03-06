package com.withmong.dao;

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

public interface ProductDao {

	List<Location> findLocalList(String city);
	void addProduct(Product product);
	List<Category> findCategory();
 	Product productDetail(int no);
	void addProductReview(ProductReview productReview);
	List<ProductReview> getAllProductReivew(int no);
	Category findCategoryByNo(int no);
	User getUserDetail(String name);
	List<Location> findLocation();
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
	void updateProduct(Product product);
	int getSeqNumber();
	void pointupdateUser(User user);
	void pointupdateAdmin(User user);
	void updateProductNoImg(Product product);
	List<Product> getSellerProduct(Product product);
	void productQtyupdate(Product product);
	void addCart(Product product);
	int getOrderCount(Product product);
	int getCartCount(Product product);
	int getRepleCount(Product product);
	int getProReplyCount(int no);
	int getTotalRows(SearchForm searchForm);
	
}
