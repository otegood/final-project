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

import com.withmong.form.ProductForm;
import com.withmong.model.Category;
import com.withmong.model.Location;
import com.withmong.model.Product;
import com.withmong.model.ProductReview;
import com.withmong.model.User;
import com.withmong.service.ProductService;


@Controller
public class ProductController {

	@Autowired
	private ProductService productService;

	private static String UPLOAD_DIRECTORY = "c:/upload";


	@RequestMapping(value="/detail.do")
	public String detail(@RequestParam(name="productNo") int no, Model model,Model review,Model userDe) {
		Product productDetail = productService.productDetail(no);
		model.addAttribute("detail",productDetail);
		
		String name = productDetail.getUserId();
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
		return "product/addProduct";
	}

	@RequestMapping(value="/addProduct.do", method=RequestMethod.POST)
	public String addProduct(ProductForm productForm ,@RequestParam("img")MultipartFile img, User loginedUser) throws Exception{

		//System.out.println("시작");
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
		product.setUserId(loginId);

		// 이미지 사진
		String filename = img.getOriginalFilename();
		
		if(!filename.isEmpty()){			
			String protitle = "pro_"+loginId;
			
			String extName = filename.substring(filename.lastIndexOf(".")+1);
			byte[] bytes = img.getBytes();
			File file = new File(UPLOAD_DIRECTORY, protitle + "." + extName);
			FileCopyUtils.copy(bytes, file);
			product.setImg(protitle + "." + extName);
		}else{
			product.setImg("default/defaultProduct.png");
		}
		

		//youtubeURL 
		String video = productForm.getVideo();
		product.setVideo(video);

		// 내용
		String contents = productForm.getContents();
		product.setContents(contents);

		//지역
		product.setLocationNo(productForm.getLocationNo());

		//수량 및 인원
		int qty = productForm.getQty();
		product.setQty(qty);

		//가격
		int price = productForm.getPrice();
		product.setPrice(price);

		//태그
		String tag = productForm.getTag();
		product.setTag(tag);
		
		/*
		System.out.println("----------------------------------------------------------------------");
		System.out.println(product.toString());
		System.out.println("----------------------------------------------------------------------");
		 */
		productService.addProduct(product);


		return "redirect:/searchlist.do";
	}
	@RequestMapping(value="/searchlist.do")
	public String searchlist() {
		return "product/searchlist";
	}

	/*	
    @RequestMapping(value="/productreple.do", method=RequestMethod.POST)
	public @ResponseBody void roductreple(ProductReview productReview, User loginedUser) throws Exception{

		String loginId = loginedUser.getId();
		productReview.setUserId(loginId);

		productService.addProductReview(productReview);
	}
	*/
	@RequestMapping(value="/productreple.do", method=RequestMethod.POST)
	public @ResponseBody void productreple(int score,String contents,int productNo, User loginedUser) throws Exception{
		
		ProductReview productReview = new ProductReview();
		

		
		String loginId = loginedUser.getId();
		productReview.setUserId(loginId);
		productReview.setScore(score);
		productReview.setContents(contents);
		productReview.setProductNo(productNo);
		
		productService.addProductReview(productReview);
	}




}
