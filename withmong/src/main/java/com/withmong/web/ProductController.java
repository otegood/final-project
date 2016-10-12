package com.withmong.web;

import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
import com.withmong.model.Criteria;
import com.withmong.model.Location;
import com.withmong.model.Order;
import com.withmong.model.Pagination;
import com.withmong.model.Product;
import com.withmong.model.ProductReview;
import com.withmong.model.User;
import com.withmong.service.ProductService;


@Controller
public class ProductController {

	@Autowired
	private ProductService productService;

	@RequestMapping(value="/detail.do")
	public String detail(@RequestParam(name="productNo") int no, Model model,Model review,Model userDe,User loginedUser
			, HttpServletRequest req, HttpServletResponse res) throws Exception {
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
		
		
		
		Product product = productService.getProductByNo(no);
		List<Product> sellerProducts = productService.getSellerProducts(product);
		model.addAttribute("sellerProducts", sellerProducts);

		int orderCount = 0;
		int cartCount = 0;
		int repleCount = 0;
		
		if(loginedUser != null){
						
			product.setUserid(loginedUser.getId());
			product.setNo(no);
			orderCount = productService.getOrderCount(product);
			cartCount = productService.getCartCount(product);	
			repleCount = productService.getRepleCount(product);
		}
		int proReplyCount = productService.getProReplyCount(no);
		
		model.addAttribute("orderCount", orderCount);
		model.addAttribute("cartCount", cartCount);
		model.addAttribute("repleCount", repleCount);
		model.addAttribute("proReplyCount", proReplyCount);
		
		
		//쿠키 조회용
				Cookie cookie = new Cookie("item_"+no, URLEncoder.encode(product.getTitle()+"___ZZZ___"+product.getImg(), "utf-8"));
				cookie.setMaxAge(60*60*24);
				res.addCookie(cookie);
		
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
	public String addProduct(ProductForm productForm ,@RequestParam("imgmul")MultipartFile imgmul, User loginedUser) throws Exception{
		
		Product product = new Product();
		BeanUtils.copyProperties(productForm, product);

		// 카테고리 번호
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
		//product.setImg(img.getOriginalFilename());
		product.setImgmul(imgmul);	
 
		
		//youtubeURL 
		String video = productForm.getVideo();
		product.setVideo(video);

		// 내용
		String contents = productForm.getContents();
		product.setContents(contents.replace("\r\n", "<br>"));
		
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
	public String updateProduct(ProductForm productForm ,@RequestParam("changeimg")MultipartFile changeimg, User loginedUser) throws Exception{
		
		Product product = new Product();
		BeanUtils.copyProperties(productForm, product);

		
		int no = Integer.parseInt(productForm.getNo()); 
		product.setNo(no);
		// 제목
		String title = productForm.getTitle();
		product.setTitle(title);

		// 아이디
		String loginId = loginedUser.getId();
		product.setUserid(loginId);

		// 이미지 사진
		String preimg = productForm.getImg();
		
		product.setImg(preimg);
		product.setImgmul(changeimg);
		
		System.out.println("controller preimg : " + preimg);
		System.out.println("controller changeimg : " + changeimg);
		System.out.println("controller changeimg : " + changeimg.getOriginalFilename());


		//youtubeURL 
		String video = productForm.getVideo();
		product.setVideo(video);

		// 내용
		String contents = productForm.getContents();
		product.setContents(contents.replace("\r\n", "<br>"));

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
		

		productService.updateProduct(product);
		
		return "redirect:/detail.do?productNo=" +no;
	}	
	//------------------------------------------------------------------------------------------------------------------------
	//수정끝

	//디테일에서 삭제
	@RequestMapping(value="/deleteProduct.do", method=RequestMethod.GET)
	public String deleteProduct(@RequestParam(name="productNo")int no) {
		
		productService.deleteProduct(no);
		
		return "redirect:/searchList.do";
	}
		
	
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
	public String searchList (@RequestParam(name="pno", required=false, defaultValue="1" ) int pno,SearchForm searchForm,Model model) throws Exception{
		
		System.out.println(searchForm.getSearch());
		
		
				int rows = 7;
				int pages = 5;
				int beginIndex = (pno - 1)*rows + 1;
				int endIndex = pno*rows;
				
				searchForm.setBeginIndex(beginIndex);
				searchForm.setEndIndex(endIndex);
				
				// 전체 데이타 건수 조회하기
				int totalRows = productService.getTotalRows(searchForm);
				
				// 페이지 내비게이션 정보 생성하기
				Pagination pagination = new Pagination(rows, pages, pno, totalRows);
				List<Product> searchProduct = productService.searchProduct(searchForm);
			
			model.addAttribute("type",searchForm.getType());
			model.addAttribute("search",searchForm.getSearch());
			model.addAttribute("searchList",searchProduct);
			model.addAttribute("page", pagination);
			model.addAttribute("searchIndex", totalRows);
			
		return "product/searchList";
	}

	
	@RequestMapping(value="/productBuy.do", method=RequestMethod.POST)
	public @ResponseBody void  productBuy (User loginedUser,int productNo, int qty, int price) throws Exception{
		Product product = productService.getProductByNo(productNo);
		
			Order order = new Order();
			order.setUserid(loginedUser);
			order.setProductNo(product);
			order.setQty(qty);
			order.setPrice(price);
			User user = new User();
			// 유저에서 상품 가격 차감
			user.setId(loginedUser.getId());
			user.setPoint(price);
			productService.pointupdateUser(user);
			// 관리자에게 포인트 업데이트
			user.setId("king");
			user.setPoint(price);
			productService.pointupdateAdmin(user);
			// 주문목록에 추가
			productService.addOrder(order);
			
			// 상품목록에서 qty값 감소시키기
			product.setQty(qty);
			productService.productQtyupdate(product);	
			
			loginedUser.setPoint(loginedUser.getPoint() - price);
			
	}

	
	@RequestMapping(value="/addCart.do", method=RequestMethod.POST)
	public String addCart(User loginedUser, int productNo) throws Exception{
		Product product = new Product();
		product.setUserid(loginedUser.getId());
		product.setNo(productNo);
		productService.addCart(product);
		
		return "redirect:/detail.do?productNo=" +productNo;
	}	
	


}
