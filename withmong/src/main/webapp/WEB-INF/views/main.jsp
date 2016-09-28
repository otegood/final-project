<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript">
	//더보기
	$(document).ready(function() {
		$('#more').click(function() {
		$(".addToProducts").append(
				'<div class="row" style="margin-left: 0px; margin-right: 0px;">'+
				'<div class="col-sm-3" style="padding-left: 15px; padding-right: 15px;">'+
					'<span class="pro-img"> <a class="togo" href="#">'+ 
					'<img class="img-responsive" src="resources/img/vvv.png" alt="">'+
							'</a>'+'</span>'
							
					+'<div class="row" style="padding-left: 0px;">'+
						'<div class="call-product-title">'+
							'<p>'+
								'<span class="glyphicon glyphicon-gift"></span>'+
								
							'</p>'+
						'</div>'+

						'<div class="call-product-price">'+
							'<p>'+
								'<span class="glyphicon glyphicon-cd"></span>'+
								
								
							'</p>'+

						'</div>'+
					'</div>'+
				'</div>'+
				'<div class="col-sm-3" style="padding-left: 15px; padding-right: 15px;">'+
					
					'<span class="pro-img"> <a class="togo" href="#">'+ 
					'<img class="img-responsive" src="resources/img/vvv.png" alt="">'+
							
					'</a>'+
					'</span>'+
					'<div class="row" style="padding-left: 0px;">'+
						'<div class="call-product-title">'+
							'<p>'+
								'<span class="glyphicon glyphicon-gift"></span>'+
								
								
							'</p>'+
						'</div>'+

						'<div class="call-product-price">'+
							'<p>'+
								'<span class="glyphicon glyphicon-cd"></span>'+
								
								
							'</p>'+

						'</div>'+
					'</div>'+
				'</div>'+
				+
				'<div class="col-sm-3" style="padding-left: 15px; padding-right: 15px;">'+
					'<span class="pro-img"> <a class="togo" href="#">'+ 
					'<img class="img-responsive" src="resources/img/vvv.png" alt="">'+
							'</a>'+'</span>'
							
					+'<div class="row" style="padding-left: 0px;">'+
						'<div class="call-product-title">'+
							'<p>'+
								'<span class="glyphicon glyphicon-gift"></span>'+
								
							'</p>'+
						'</div>'+

						'<div class="call-product-price">'+
							'<p>'+
								'<span class="glyphicon glyphicon-cd"></span>'+
								
								
							'</p>'+

						'</div>'+
					'</div>'+
				'</div>'+
				'<div class="col-sm-3" style="padding-left: 15px; padding-right: 15px;">'+
					
					'<span class="pro-img"> <a class="togo" href="#">'+ 
					'<img class="img-responsive" src="resources/img/vvv.png" alt="">'+
							
					'</a>'+
					'</span>'+
					'<div class="row" style="padding-left: 0px;">'+
						'<div class="call-product-title">'+
							'<p>'+
								'<span class="glyphicon glyphicon-gift"></span>'+
								
								
							'</p>'+
						'</div>'+

						'<div class="call-product-price">'+
							'<p>'+
								'<span class="glyphicon glyphicon-cd"></span>'+
								
								
							'</p>'+

						'</div>'+
					'</div>'+
				'</div>'
				+
				'<div class="col-sm-3" style="padding-left: 15px; padding-right: 15px;">'+
					'<span class="pro-img"> <a class="togo" href="#">'+ 
					'<img class="img-responsive" src="resources/img/vvv.png" alt="">'+
							'</a>'+'</span>'
							
					+'<div class="row" style="padding-left: 0px;">'+
						'<div class="call-product-title">'+
							'<p>'+
								'<span class="glyphicon glyphicon-gift"></span>'+
								
							'</p>'+
						'</div>'+

						'<div class="call-product-price">'+
							'<p>'+
								'<span class="glyphicon glyphicon-cd"></span>'+
								
								
							'</p>'+

						'</div>'+
					'</div>'+
				'</div>'+
				'<div class="col-sm-3" style="padding-left: 15px; padding-right: 15px;">'+
					
					'<span class="pro-img"> <a class="togo" href="#">'+ 
					'<img class="img-responsive" src="resources/img/vvv.png" alt="">'+
							
					'</a>'+
					'</span>'+
					'<div class="row" style="padding-left: 0px;">'+
						'<div class="call-product-title">'+
							'<p>'+
								'<span class="glyphicon glyphicon-gift"></span>'+
								
								
							'</p>'+
						'</div>'+

						'<div class="call-product-price">'+
							'<p>'+
								'<span class="glyphicon glyphicon-cd"></span>'+
								
								
							'</p>'+

						'</div>'+
					'</div>'+
				'</div>'+
			'</div>'		
		
		
		);
	})
})
</script>

<style type="text/css">
.ex-company {
	color: white;
	top: 0;
	left: 0;
	border;
}

strong {
	color: yellow;
	top: 0;
	left: 0;
}

.navbar-form navbar-left {
	text-align: center;
}

#foot-alpabet {
	color: white;
}

#logo {
	width: 156px;
	height: 75px;
	padding-bottom: 0px;
}

#footer {
	padding: 10px;
	background-color: black;
}

.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 70%;
	margin: auto;
}

#paging {
	display:;
	position: relative;
	line-height: 1em;
}

#paging .btn_prev {
	border: 1px solid #CCC;
	display: inline-block;
}

#paging .btn_next {
	border: 1px solid #CCC;
	display: inline-block;
	margin-left: 80px;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<header>
		<%@ include file="header.jsp"%>
	</header>
	<!-- 내용 기입 -->
	<div class="container">
		<br>
		<div id="myCarousel" class="carousel slide" data-ride="carousel" style="height: 250px;">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active" id="show-item">
					<img src="resources/img/p1.png" alt="cat1" id="show-item">
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		<div class="row" style="margin-left: 10px;">
			<h1 class="page-header">상품 리스트</h1>
		</div>
		<div class="row" id="">
			<div class="col-sm-3 col-sm-offset-8" style="margin-bottom: 20px;">
				<div class="col-sm-4">
					<a href="#">최신순</a>
				</div>
				<div class="col-sm-4">
					<a href="#">인기순</a>
				</div>
				<div class="col-sm-4">
					<a href="#">조회순</a>
				</div>
			</div>
			<div class="addToProducts">
				<div class="row" style="margin-left: 0px; margin-right: 0px;">
					<div class="col-sm-3"
						style="padding-left: 15px; padding-right: 15px;">
						<!-- 첫 이미지 크기 400*300 -->
						<span class="pro-img"> <a class="togo" href="#"> <img
								class="img-responsive" src="resources/img/vvv.png" alt="">
								<!-- 이미지 크기는 400*200 -->
						</a>
						</span>
						<div class="row" style="padding-left: 0px;">
							<div class="call-product-title">
								<p>
									<span class="glyphicon glyphicon-gift"></span>
									<!-- 상품명 불러오는 곳 -->
									-------상품명-------
								</p>
							</div>

							<div class="call-product-price">
								<p>
									<span class="glyphicon glyphicon-cd"></span>
									<!-- 상품 가격 불러오는 곳 -->
									-------가격--------
								</p>

							</div>
						</div>
					</div>
					<div class="col-sm-3"
						style="padding-left: 15px; padding-right: 15px;">
						<!-- 첫 이미지 크기 400*300 -->
						<span class="pro-img"> <a class="togo" href="#"> <img
								class="img-responsive" src="resources/img/vvv.png" alt="">
								<!-- 이미지 크기는 400*200 -->
						</a>
						</span>
						<div class="row" style="padding-left: 0px;">
							<div class="call-product-title">
								<p>
									<span class="glyphicon glyphicon-gift"></span>
									<!-- 상품명 불러오는 곳 -->
									-------상품명-------
								</p>
							</div>

							<div class="call-product-price">
								<p>
									<span class="glyphicon glyphicon-cd"></span>
									<!-- 상품 가격 불러오는 곳 -->
									-------가격--------
								</p>

							</div>
						</div>
					</div>
					<div class="col-sm-3"
						style="padding-left: 15px; padding-right: 15px;">
						<!-- 첫 이미지 크기 400*300 -->
						<span class="pro-img"> <a class="togo" href="#"> <img
								class="img-responsive" src="resources/img/vvv.png" alt="">
								<!-- 이미지 크기는 400*200 -->
						</a>
						</span>
						<div class="row" style="padding-left: 0px;">
							<div class="call-product-title">
								<p>
									<span class="glyphicon glyphicon-gift"></span>
									<!-- 상품명 불러오는 곳 -->
									-------상품명-------
								</p>
							</div>

							<div class="call-product-price">
								<p>
									<span class="glyphicon glyphicon-cd"></span>
									<!-- 상품 가격 불러오는 곳 -->
									-------가격--------
								</p>

							</div>
						</div>
					</div>
					<div class="col-sm-3"
						style="padding-left: 15px; padding-right: 15px;">
						<!-- 첫 이미지 크기 400*300 -->
						<span class="pro-img"> <a class="togo" href="#"> <img
								class="img-responsive" src="resources/img/vvv.png" alt="">
								<!-- 이미지 크기는 400*200 -->
						</a>
						</span>
						<div class="row" style="padding-left: 0px;">
							<div class="call-product-title">
								<p>
									<span class="glyphicon glyphicon-gift"></span>
									<!-- 상품명 불러오는 곳 -->
									-------상품명-------
								</p>
							</div>

							<div class="call-product-price">
								<p>
									<span class="glyphicon glyphicon-cd"></span>
									<!-- 상품 가격 불러오는 곳 -->
									-------가격--------
								</p>

							</div>
						</div>
					</div>
				</div>
			</div>
			<div style="text-align: center; margin-bottom: 30px; margin-top: 30px;">
				<a class="btn btn-danger btn-large" style="width: 400px;" id="more">더보기</a>
			</div>
		</div>
	</div>
	
	<%@ include file="footer.jsp"%>
</body>
</html>






