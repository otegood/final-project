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
	$(function() {
		//DB에서 태그에 해당하는 상품 보여주기
		function generatedProducts(products) {
			$
					.each(
							products,
							function(index, item) {
								$("#area")
										.append(
												
												  '<div class="col-sm-4 col-md-3" id="plus-product" >'+
												    '<div class="thumbnail">'+
													    '<a href="detail.do?productNo='+ item.no+ '">'+
													 	   '<img src="../../resources/images/'+item.img+' " width="290px" height="90px" style="height: 164px;"/>'+
													    '</a>'+
													      '<div class="caption">'+
													      
													        '<h3>'  + item.title+'</h3>'+
													       
													        '<h5> 포인트: '+ item.price+'P</h5>'+
													        
													        '<img src="resources/images/default/'+ 
													        Math.round(item.avglike)+ 
													        'star.PNG"/>'+
													      '</div>'+
												    '</div>'+
												  '</div>'
												
												);

							})

		}
		//클릭한 태그의 번호 넘기기
		function getProducts(moreNo) {

			$.ajax({
				url : $("#requestUrl").val(),
				data : {
					no : moreNo
				},
				dataType : "json",
				success : function(result) {
					console.log(result);
					generatedProducts(result);
				}
			});
		}

		//최근 등록순 클릭시
		$("#recent").click(function() {
			$("#area").empty();

			var pno = 1
			$("#morecnt").val(pno);

			$("requestUrl").empty();
			$("#requestUrl").val("recentlist.do");

			getProducts(pno);

		}).trigger("click");

		//조회순 클릭시
		$("#hits").click(function() {
			$("#area").empty();

			var pno = 1
			$("#morecnt").val(pno);

			$("requestUrl").empty();
			$("#requestUrl").val("hitslist.do");
			getProducts(pno);
		})

		//인기순 클릭시
		$("#avglike").click(function() {
			$("#area").empty();

			var pno = 1
			$("#morecnt").val(pno);

			$("requestUrl").empty();
			$("#requestUrl").val("avglikelist.do");
			getProducts(pno);
		});

		//더보기
		$("#more").click(function() {

			var pno = parseInt($("#morecnt").val()) + 1
			$("#morecnt").val(pno);

			getProducts(pno);

		})

		//여기서부터 톱 배너
		
		// hide #back-top first
		$("#back-top").hide();
		 
		// fade in #back-top
		$(function () {
		    $(window).scroll(function () {
		        if ($(this).scrollTop() > 100) {
		            $('#back-top').fadeIn();
		        } else {
		            $('#back-top').fadeOut();
		        }
		    });
		 
		    // scroll body to 0px on click
		    $('#back-top a').click(function () {
		        $('body,html').animate({
		            scrollTop: 0
		        }, 800);
		        return false;
		    });
		});
		
	})
</script>

<style type="text/css">
.thumbnail {
	border: solid;
	border-width: 1px;
	
}

.ex-company {
	color: white;
	top: 0;
	left: 0;
	border;
}

p {
	text-align: center;
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

<!-- 톱 버튼 -->
#back-top {
}
 
#back-top a {
    width: 88px;
    display: block;
    text-align: center;
    font: 11px/100% Arial, Helvetica, sans-serif;
    text-transform: uppercase;
    text-decoration: none;
    
 
    /* transition */
    -webkit-transition: 1s;
    -moz-transition: 1s;
    transition: 1s;
}
#back-top a:hover {
    color: #000;
}
 
/* arrow icon (span tag) */
#back-top span {
    width: 108px;
    height: 108px;
    display: block;
    margin-bottom: 7px;
    background: #ddd url(up-arrow.png) no-repeat center center;
 
    /* rounded corners */
    -webkit-border-radius: 15px;
    -moz-border-radius: 15px;
    border-radius: 15px;
 
    /* transition */
    -webkit-transition: 1s;
    -moz-transition: 1s;
    transition: 1s;
}

.sidenav {
      padding-top: 20px;
      
    }
.row.content {height: 450px}

/* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;}
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
	<div class="row content">
		<div class="col-sm-1 sidenav" ></div>
		<div class="col-sm-10">
		<div id="myCarousel" class="carousel slide" data-ride="carousel"
			style="height: 250px;">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active" id="show-item">
					<!-- <img src="resources/img/p1.png" alt="cat1" id="show-item"> -->
					<img style="width: 250px; height: 250px;" alt="hotproduct"
						src="resources/images/product/kim.PNG" />
				</div>
				<div class="item">
					<img style="width: 250px; height: 250px;" alt="hotproduct"
						src="resources/images/product/choi.png" />
				</div>
				<div class="item">
					<img style="width: 250px; height: 250px;" alt="hotproduct"
						src="resources/images/product/glyphicons-girl.png" />
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
			<div class="col-sm-6 col-sm-offset-6" style="margin-bottom: 20px;">
				<div class="col-sm-4">
					<button id="avglike" value="reset" class="btn-primary btn-xs ">인기순</button>
				</div>
				<div class="col-sm-4">
					<button id="recent" value="reset" class="btn-success btn-xs">최신
						등록순</button>
				</div>
				<div class="col-sm-4">
					<button id="hits" value="reset" class="btn-warning btn-xs">조회순</button>
				</div>
			</div>
			<div class="addToProducts">

				<div class="row" id="area"
					style="margin-left: 0px; margin-right: 0px;">
					<!-- 리스트 추가되는 부분? -->
					
				</div>


			</div>
			<div
				style="text-align: center; margin-bottom: 30px; margin-top: 30px;">
				<input type="hidden" id="morecnt" value="0" /> <a
					class="btn btn-danger btn-large" style="width: 400px;" id="more">더보기</a>
			</div>
			<input type="hidden" id="requestUrl" value="recentlist.do" />
			
		</div>
		<div class="body-wrap">
			<img alt="" src="resources/images/default/yame2.png">
		</div>


	
		</div>
		<div class="col-sm-1 sidenav">
			<div><br /></div>
			<div><br /></div>
			<div><br /></div>
			<div><br /></div>
			<div><br /></div>
			<div><br /></div>
			<div><br /></div>
			<div><br /></div>
			<div><br /></div>
			<div><br /></div>
			<div><br /></div>
			
				<p id="back-top" style="position: fixed;">
				    <a href="#top"><span><img alt="" src="resources/images/default/top.png" style="height: 100px;"></span>
					</a>
				</p>
			
		</div>
		
	</div>
</div>

	<%@ include file="footer.jsp"%>
</body>
</html>






