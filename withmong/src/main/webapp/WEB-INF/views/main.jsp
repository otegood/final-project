<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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

<style type="text/css">
img.pro-img {
	width: 200px;
	height: 200px;
}

img.aa {
	width: 80px;
	height: 80px;
}

header {
	background-color: black;
}

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

#show-item {
	height: 300px;
	margin-top: 25px;
	margin-bottom: 25px;
	width: auto;
}

#display {
	width: 70%;
	height: 350px;
	width: auto;
	height: auto;
}
#rightSide{
position: absolute;
top: 547px;
left: 50%;
margin: 0 0 0 510px;
	}
#rightSide #right_zzim {
position: fixed;
top: 126px;
left: 50%;
margin-left: 510px;
border:1px solid #B0B5BD;
width:114px;
height:543px;
}

#rightSide #right_zzim  div {text-align:center;}
#rightSide #right_zzim  div.recTit{line-height:1.5em;padding:5px;color:white;background-color:#505A69;}
#right_zzim #recentCnt {color:yellow;}
#rightSide #right_zzim ul {min-height:495px;}
#rightSide #right_zzim  li{text-align:center;padding:5px;position:relative;} 
#rightSide #right_zzim ul li img {border:1px solid #ccc}
#right_zzim .detail {
display: none;
position: absolute;
top: 3px;
right: 20px;
xheight: 40px;
xpadding: 15px 11px 0;
xbackground: #404a59;
color: #fff;
xtext-align: left;
white-space: nowrap;

}

#right_zzim li:hover .detail {display:block}
#right_zzim li .btn_delete {
position: absolute;
top: 3px;
right: -1px;
width: 11px;
height: 11px;
background: url(/img/sp.png) no-repeat -193px -111px;
text-indent: -9000px;
}
#right_zzim  #currentPage {color:#505A69;font-weight:bold}
#right_zzim  #totalPageCount {color:#CBC8D2;font-weight:bold}
.noData {color:#ccc;text-align:center;margin-top:223px;}

}
#paging {display:;position:relative;line-height:1em;}
#paging .btn_prev {
border:1px solid #CCC;
display:inline-block;
}

#paging .btn_next {
border:1px solid #CCC;
display:inline-block;
margin-left: 80px;
}



</style>
<title>Insert title here</title>
</head>
<header>
	<%@ include file="header.jsp"%>
</header>
<body>


	<!-- 내용 기입 -->
	<div class="container" id="display">
		<br>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
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

				<div class="item">
					<img src="resources/img/p2.png" alt="cat1" id="show-item">
				</div>

				<div class="item">
					<img src="resources/img/p3.png" alt="cat1" id="show-item">
				</div>

				<div class="item">
					<img src="resources/img/p4.png" alt="cat2" id="show-item">
				</div>

				<div class="item">
					<img src="resources/img/p5.png" alt="cat3" id="show-item">
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
	</div>


	<div class="row" style="margin-left: 10px;">
		<div class="col-sm-10">

			<div class="col-lg-12">
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
				<div class="col-sm-1"></div>
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
							<div class="col-sm-8" style="padding-left: 0px;">
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
							<div class="col-sm-4">
								<div class="send-message">
									<p>
										<a href="#"><span class="glyphicon glyphicon-envelope"></span></a>
										<!-- 메세지 폼 이동 -->
									</p>
								</div>
								<div class="send-respon">
									<p>
										<a href="#"><span class="glyphicon glyphicon-alert"></span></a>
										<!-- 신고 폼 이동 -->
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
							<div class="col-sm-8" style="padding-left: 0px;">
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
							<div class="col-sm-4">
								<div class="send-message">
									<p>
										<a href="#"><span class="glyphicon glyphicon-envelope"></span></a>
										<!-- 메세지 폼 이동 -->
									</p>
								</div>
								<div class="send-respon">
									<p>
										<a href="#"><span class="glyphicon glyphicon-alert"></span></a>
										<!-- 신고 폼 이동 -->
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
							<div class="col-sm-8" style="padding-left: 0px;">
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
							<div class="col-sm-4">
								<div class="send-message">
									<p>
										<a href="#"><span class="glyphicon glyphicon-envelope"></span></a>
										<!-- 메세지 폼 이동 -->
									</p>
								</div>
								<div class="send-respon">
									<p>
										<a href="#"><span class="glyphicon glyphicon-alert"></span></a>
										<!-- 신고 폼 이동 -->
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
							<div class="col-sm-8" style="padding-left: 0px;">
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
							<div class="col-sm-4">
								<div class="send-message">
									<p>
										<a href="#"><span class="glyphicon glyphicon-envelope"></span></a>
										<!-- 메세지 폼 이동 -->
									</p>
								</div>
								<div class="send-respon">
									<p>
										<a href="#"><span class="glyphicon glyphicon-alert"></span></a>
										<!-- 신고 폼 이동 -->
									</p>
								</div>
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>
		<div class="col-sm-2">
				<div id="right_zzim">
					<div  class="recTit">최근본상품 <span id=recentCnt></span></div>
						<ul style="padding-left: 20px;">
						<!-- 본 상품이 뿌려질 부분  -->
							<li>1</li>
							<li>1</li>
							<li>1</li>
							<li>1</li>
						
						</ul>    
					<div id="paging"><a class="btn_prev" style="cursor:pointer" >이전</a><span  id="currentPage"></span><span id="totalPageCount"></span><a class="btn_next" style="cursor:pointer" >다음</a></div>
				</div>
		</div>
		<div class="col-sm-10 addControl" style="text-align: center;">
			<a class="btn btn-primary btn-large" style="margin-left: 30px;"
				id="more">더보기</a>
		</div>
		<div class="col-sm-2"></div>
		

	</div>
	<div class="row">$&nbsp;</div>
	<div class="row">$&nbsp;</div>
	<%@ include file="footer.jsp"%>
</body>
<footer></footer>
<script type="text/javascript">
//더보기
	$(document).ready(function() {
		$('#more').click(function() {
			$(".addToProducts").append('<div>aaaa</div><div>aaaa</div><div>aaaa</div><div>aaaa</div>');
		});
	});

</script>
</html>




