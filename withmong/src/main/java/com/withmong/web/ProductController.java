package com.withmong.web;

import java.io.File;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.withmong.form.BreadcrumbsForm;
import com.withmong.form.CountForm;
import com.withmong.form.ProductForm;
import com.withmong.form.SearchForm;
import com.withmong.model.Category;
import com.withmong.model.Location;
import com.withmong.model.Order;
import com.withmong.model.Product;
import com.withmong.model.ProductReview;
import com.withmong.model.User;
import com.withmong.service.ProductService;


@Controller
public class ProductController {

	@Autowired
	private ProductService productService;


	private static String UPLOAD_DIRECTORY = "C:\\Users\\JHTA\\git\\final-project\\withmong\\src\\main\\webapp\\resources\\images\\";



	@RequestMapping(value="/detail.do")
	public String detail(@RequestParam(name="productNo") int no, Model model,Model review,Model userDe,User loginedUser) {
		//조회수 업데이트
		productService.updateHits(no);

		
		Product productDetail = productService.productDetail(no);
		Location location = productService.getLocationByno(productDetail.getLocation().getNo());
		productDetail.setLocation(location);
		
		
		BreadcrumbsForm crumbs = productService.getCrumbs(productDetail.getCategory().getNo());	
		//상품 디테일 정보
		model.addAttribute("detail",productDetail);
		// 카테고리 정보 조회
		model.addAttribute("crumbs", crumbs);
		
		String name = productDetail.getUserid();
		User userDetail = productService.getUserDetail(name);

		
		userDe.addAttribute("userDetail", userDetail);		
		

		
		List<ProductReview> productReivewList = productService.getAllProductReivew(no);
		review.addAttribute("productReivewList",productReivewList);
		return "product/detail";
	}
	
	@RequestMapping(value="/getReviewList.do")
	public @ResponseBody List<ProductReview> getReviewList (@RequestParam(name="productNo") int no) {
		List<ProductReview> productReivewList = productService.getAllProductReivew(no);
		return productReivewList;

	}



	@RequestMapping(value="/addProduct.do", method=RequestMethod.GET)
	public String addProduct(Model model) {
		List<Category> categoryList = productService.findCategory();
		model.addAttribute("cateList",categoryList);
		
		List<Location> locationList = productService.findLocation();
		model.addAttribute("locaList",locationList);
		
		return "product/addProduct";
	}

	@RequestMapping(value="/addProduct.do", method=RequestMethod.POST)
	public String addProduct(ProductForm productForm ,@RequestParam("img")MultipartFile img, User loginedUser) throws Exception{
		
		
		Product product = new Product();
		BeanUtils.copyProperties(productForm, product);

		// 카테고리 번호
		//product.setCategoryNo(productForm.getCategoryNo());
		Category category = new Category();
	
		category = productService.findCategoryByNo(productForm.getCategory().getNo());

		product.setCategory(category);
		
		// 제목
		String title = productForm.getTitle();
		product.setTitle(title);

		// 아이디
		String loginId = loginedUser.getId();
		product.setUserid(loginId);
	

		// 이미지 사진
		String filename = img.getOriginalFilename();
		
		if(!filename.isEmpty()){			
			String protitle = "product/"+loginId;
			
			String extName = filename.substring(filename.lastIndexOf(".")+1);
			byte[] bytes = img.getBytes();
			File file = new File(UPLOAD_DIRECTORY, protitle + "." + extName);
			FileCopyUtils.copy(bytes, file);
			product.setImg(protitle + "." + extName);
		}else{
			product.setImg("default\\defaultProduct.png");
		}
		

		//youtubeURL 
		String video = productForm.getVideo();
		product.setVideo(video);

		// 내용
		String contents = productForm.getContents();
		product.setContents(contents);

		//지역
		Location location = new Location();
		location = productService.findLocationNo(productForm.getLocation());
		product.setLocation(location);
	
		
		//수량 및 인원
		int qty = productForm.getQty();
		product.setQty(qty);

		//가격
		int price = productForm.getPrice();
		product.setPrice(price);

		//태그
		String tag = productForm.getTag();
		product.setTag(tag);
		

		productService.addProduct(product);


		return "redirect:/searchList.do";
	}
	//------------------------------------------------------------------------------------------------------------------------
	// 상품 수정
	@RequestMapping(value="/updateProduct.do", method=RequestMethod.GET)
	public String updateProduct(@RequestParam(name="productNo") int productNo, Model model) {
		
		List<Category> categoryList = productService.findCategory();
		model.addAttribute("cateList",categoryList);
		
		List<Location> locationList = productService.findLocation();
		model.addAttribute("locaList",locationList);
		
		Product product = productService.productDetail(productNo);
		model.addAttribute("detail", product);
		
		return "product/registerproduct";
	}

	@RequestMapping(value="/updateProduct.do", method=RequestMethod.POST)
	public String updateProduct(ProductForm productForm ,@RequestParam("img")MultipartFile img, User loginedUser) throws Exception{
		
		
		System.out.println("---------------------------------------------------------");
		System.out.println("---------------------------------------------------------");
		System.out.println("---------------------------------------------------------");
		System.out.println(productForm.getNo());
		System.out.println("---------------------------------------------------------");
		System.out.println("---------------------------------------------------------");
		System.out.println("---------------------------------------------------------");
		
		
		Product product = new Product();
		BeanUtils.copyProperties(productForm, product);

		// 카테고리 번호
		//product.setCategoryNo(productForm.getCategoryNo());
		Category category = new Category();
	
		category = productService.findCategoryByNo(productForm.getCategory().getNo());

		product.setCategory(category);
		
		// 제목
		String title = productForm.getTitle();
		product.setTitle(title);

		// 아이디
		String loginId = loginedUser.getId();
		product.setUserid(loginId);
	

		// 이미지 사진
		String filename = img.getOriginalFilename();
		
		if(!filename.isEmpty()){			
			String protitle = "product/"+loginId;
			
			String extName = filename.substring(filename.lastIndexOf(".")+1);
			byte[] bytes = img.getBytes();
			File file = new File(UPLOAD_DIRECTORY, protitle + "." + extName);
			FileCopyUtils.copy(bytes, file);
			product.setImg(protitle + "." + extName);
		}else{
			product.setImg("default\\defaultProduct.png");
		}
		

		//youtubeURL 
		String video = productForm.getVideo();
		product.setVideo(video);

		// 내용
		String contents = productForm.getContents();
		product.setContents(contents);

		//지역
		Location location = new Location();
		location = productService.findLocationNo(productForm.getLocation());
		product.setLocation(location);
	
		
		//수량 및 인원
		int qty = productForm.getQty();
		product.setQty(qty);

		//가격
		int price = productForm.getPrice();
		product.setPrice(price);

		//태그
		String tag = productForm.getTag();
		product.setTag(tag);
		

		productService.addProduct(product);


		return "redirect:/searchList.do";
	}

	
	
	//------------------------------------------------------------------------------------------------------------------------

	@RequestMapping(value="/productreple.do", method=RequestMethod.POST)
	public @ResponseBody double productreple(int score,String contents,int productNo, User loginedUser) throws Exception{

		ProductReview productReview = new ProductReview();
	
		String loginId = loginedUser.getId();

		productReview.setUserId(loginId);
		productReview.setScore(score);
		productReview.setContents(contents);
		productReview.setProductNo(productNo);
		
		productService.addProductReview(productReview);
		// 행의 갯수와 총점을 구하는 서비스
		CountForm cf = productService.getCountandRow(productNo);
		
		double avglike = (double)cf.getTotalScore()/cf.getRowCount();
		
		cf.setAvglike(avglike);
		cf.setProductNo(productNo);
		productService.updateAvglike(cf);
		
		return productService.getProductByNo(productNo).getAvglike();
	}
	
	@RequestMapping(value="/productrepleDel.do", method=RequestMethod.POST)
	public @ResponseBody double productrepleDel(int reviewNo, int productNo) throws Exception{
		
		// 댓글 지우기 
		productService.ProductReviewDel(reviewNo);
		
		// 평점 다시계산하기
		CountForm cf = productService.getCountandRow(productNo);
		if(cf.getTotalScore() != 0 && cf.getRowCount() !=0 ){
		double avglike = (double)cf.getTotalScore()/cf.getRowCount();
		cf.setAvglike(avglike);
		}else{
		cf.setAvglike(0);
		}
		cf.setProductNo(productNo);
		productService.updateAvglike(cf);
		return productService.getProductByNo(productNo).getAvglike();
	}
	
	@RequestMapping(value="/locationForlocal.do", method=RequestMethod.POST)
	public @ResponseBody List<Location> locationForlocal(String city) throws Exception{

		List<Location> location = productService.findLocalList(city);		
		return location;
	}
	
	@RequestMapping(value="/searchList.do")
	//public String searchList (@RequestParam(name="search")String search, @RequestParam(name="type")String type,Model model) throws Exception{
	public String searchList (String search, String type,Model model) throws Exception{

		
		SearchForm searchForm = new SearchForm();
		searchForm.setType(type);
		searchForm.setSearch(search);
		
		List<Product> searchProduct = productService.searchProduct(searchForm);	
		
		model.addAttribute("searchList",searchProduct);
		return "product/searchList";
	}

	
	@RequestMapping(value="/productBuy.do", method=RequestMethod.POST)
	public @ResponseBody void  productBuy (User loginedUser,int productNo) throws Exception{
		Product product = productService.getProductByNo(productNo);
		
			Order order = new Order();
			order.setUserid(loginedUser);
			order.setProductNo(product);
			
			productService.addOrder(order);
			
	}



}
