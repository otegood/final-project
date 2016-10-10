package com.withmong.service;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;

import com.withmong.dao.ManagerDao;
import com.withmong.dao.ProductDao;
import com.withmong.form.BreadcrumbsForm;
import com.withmong.form.CountForm;
import com.withmong.form.SearchForm;
import com.withmong.model.Category;
import com.withmong.model.Location;
import com.withmong.model.Order;
import com.withmong.model.Product;
import com.withmong.model.ProductReview;
import com.withmong.model.User;

@Service
public class ProductServiceImpl implements ProductService{

	private static String UPLOAD_DIRECTORY = "C:\\Users\\JHTA\\git\\final-project\\withmong\\src\\main\\webapp\\resources\\images";
	
	@Autowired
	private ProductDao productDao;
	
	@Autowired
	private ManagerDao managerDao;
	
	@Override
	public void addProduct(Product product) throws Exception{

		
		int no = productDao.getSeqNumber();
		product.setNo(no);
		
		String filename = product.getImgmul().getOriginalFilename();
		if(!filename.isEmpty()){	
			String protitle = "product/"+product.getUserid();
			
			String extName = filename.substring(filename.lastIndexOf(".")+1);
			byte[] bytes = product.getImgmul().getBytes();
			File file = new File(UPLOAD_DIRECTORY, protitle + no + "." + extName);
			FileCopyUtils.copy(bytes, file);
			product.setImg(protitle + no + "." + extName);
		}else{
			product.setImg("default/defaultProduct.png");
		} 
		 
		
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
	public List<Product> searchProduct(SearchForm searchForm) {
		return productDao.searchProduct(searchForm);
	}

	@Override
	public Product getProductByNo(int productNo) {
		return productDao.getProductByNo(productNo);
	}

	@Override
	public void addOrder(Order order) {
		productDao.addOrder(order);
		
	}

	@Override
	public void updateHits(int no) {
		productDao.updateHits(no);
		
	}

	@Override
	public void ProductReviewDel(int reviewNo) {
		productDao.ProductReviewDel(reviewNo);
		
	}

	@Override
	public CountForm getCountandRow(int productNo) {
		return productDao.getCountandRow(productNo);
	}

	@Override
	public void updateAvglike(CountForm cf) {
		productDao.updateAvglike(cf);
		
	}

	@Override
	public void updateProduct(Product product) throws Exception{
		
		int no = product.getNo();
		
		String preimgName = product.getImg();
		String changeImgName = product.getImgmul().getOriginalFilename();
		
		System.out.println("--------------------------");
		System.out.println("--------------------------");
		System.out.println(preimgName+" , " + changeImgName);
		System.out.println("--------------------------");
		System.out.println("--------------------------");
		
		if(!changeImgName.equals(preimgName)){	
			String protitle = "product/"+product.getUserid();
			
			String extName = changeImgName.substring(changeImgName.lastIndexOf(".")+1);
			System.out.println("extName : " + extName);
			byte[] bytes = product.getImgmul().getBytes();
			File file = new File(UPLOAD_DIRECTORY, protitle + no + "." + extName);
			FileCopyUtils.copy(bytes, file);
			product.setImg(protitle + no + "." + extName);
			productDao.updateProduct(product);
		}else{
			//product.setImg(preimgName);
			System.out.println("preimgName : " + preimgName);
			productDao.updateProductNoImg(product);
		} 
		
		
	}

	@Override
	public void deleteProduct(int no) {
		managerDao.productDelete(no);
	}

	@Override
	public void pointupdateUser(User user) {
		productDao.pointupdateUser(user);
	}

	@Override
	public void pointupdateAdmin(User user) {
		productDao.pointupdateAdmin(user);
		
	}

	@Override
	public List<Product> getSellerProducts(Product product) {
		return productDao.getSellerProduct(product);
	}


	





}
