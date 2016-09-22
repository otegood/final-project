<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
		
	img.pro-img {width: 200px; height: 200px;}
	img.aa {width: 80px; height: 80px;}
	
	header {
		background-color: black;
	}

	.ex-company {
		color: white;
		top: 0; left: 0;
		border;
	}
	
	strong {
	color: yellow;
	top: 0; left: 0;
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

	.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  
  #show-item {
  height: 300px;
  margin-top: 25px;
  margin-bottom: 25px;
  width: auto;
  }
  
  #display{
  width: 70%;
  height: 350px; 
  width: auto;
  height: auto;
  }
  
</style>
<title>Insert title here</title>
</head>
<header>
	<%@ include file="header.jsp"%>
</header>
<body>

	
	<!-- 내용 기입 -->
		<div class="container" id="display" style="margin-top: 150px;">
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
				<div class="carousel-inner" role="listbox" >
					<div class="item active" id="show-item">
						<img src="resources/img/p1.png" alt="cat1" id="show-item">
					</div>

					<div class="item" >
						<img src="resources/img/p2.png" alt="cat1" id="show-item">
					</div>

					<div class="item" >
						<img src="resources/img/p3.png" alt="cat1" id="show-item">
					</div>

					<div class="item" >
						<img src="resources/img/p4.png" alt="cat2" id="show-item">
					</div>
					
					<div class="item" >
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


		
		
		<div class="row">
			<div class="col-sm-6"></div>
			<div class="col-sm-4" style="margin-bottom: 20px;">
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
			<div class="col-sm-2"></div>

		</div>
		 <div class="row">

            <div class="col-lg-12">
                <h1 class="page-header">Thumbnail Gallery</h1>
            </div>

            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="http://placehold.it/400x300" alt="">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="http://placehold.it/400x300" alt="">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="http://placehold.it/400x300" alt="">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="http://placehold.it/400x300" alt="">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="http://placehold.it/400x300" alt="">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="http://placehold.it/400x300" alt="">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="http://placehold.it/400x300" alt="">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="http://placehold.it/400x300" alt="">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="http://placehold.it/400x300" alt="">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="http://placehold.it/400x300" alt="">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="http://placehold.it/400x300" alt="">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="http://placehold.it/400x300" alt="">
                </a>
            </div>
        </div>
		
		
		
		<div class="row">
			<div class="col-sm-3">
				<div class="row">
					<div class="col-sm-2"></div>
					<div class="col-sm-8" id="product-img">
						<div class="item">
							<img src="resources/icon/Chrysanthemum.jpg" width="150"
								height="150">
						</div>
					</div>
					<div class="col-sm-2"></div>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="row">
					<div class="col-sm-2"></div>
					<div class="col-sm-8" id="product-img">
						<div class="item">
							<img src="resources/icon/Chrysanthemum.jpg" width="150"
								height="150">
						</div>
					</div>
					<div class="col-sm-2"></div>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="row">
					<div class="col-sm-2"></div>
					<div class="col-sm-8" id="product-img">
						<div class="item">
							<img src="resources/icon/Chrysanthemum.jpg" width="150"
								height="150">
						</div>
					</div>
					<div class="col-sm-2"></div>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="row">
					<div class="col-sm-2"></div>
					<div class="col-sm-8" id="product-img">
						<div class="item">
							<img src="resources/icon/Chrysanthemum.jpg" width="150"
								height="150">
						</div>
					</div>
					<div class="col-sm-2"></div>
				</div>
			</div>
		</div>

	

	<%@ include file="footer.jsp"%>
</body>
<footer> </footer>
</html>




