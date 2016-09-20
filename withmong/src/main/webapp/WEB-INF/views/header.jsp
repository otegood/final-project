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
	.container {margin-top: 20px;}
	img.pro-img {width: 200px; height: 200px;}
	img.aa {width: 80px; height: 80px;}
	
	.ex-company {
	color: white;
	top: 0; left: 0;
	border;
	}
	
	strong{
	color: red;
	top: 0; left: 0;
	}
	
	#logo{
	width: 156px; 
	height: 150px;
	padding-top: 0px;
	padding-bottom: 100px;
	
	}
	
	.footer { 
	bottom : 0;
	width: 100%;
	height: 50px;
	}
	
	.carousel-inner > .item > img,
 	.carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
      height: 145px;
  }
  
  #myCarousel {
  width: 70%;
  margin-left: 150px;		
  }

  #foot-alpabet {
  color : white;
  }	

</style>
<title>Insert title here</title>
</head>
<body>
	<div class="header">
	<nav class="navbar navbar-inverse">
		<div class="container">
			<div id="head">
				<div class="row">
					<div class="col-sm-2">
						<div class="navbar-header">
				   			<a class="navbar-brand" href="main.do"><img id="logo" src="resources/icon/1.jpg"></a>
				 		</div>
					</div>
					<div class="col-sm-8" style="padding-dop: 20px;">
						<div class="search-controller">
							<form method="get" action="#">
								<div class="col-sm-9" style="padding-left: 0px;">
			                 	    <div class="search item">
				                 	    <input class="form-control" type="text" id="search" name="bsearch" autocomplete="off"  onkeyup=""   value="" placeholder="검색" valign="left" />
			                 	    </div>
								</div>
								<div class="col-sm-3">
									<div class="search input">
									      <button class="glyphicon glyphicon-zoom-in btn btn-primary">검색</button> 
									</div>
								</div>
		        			</form>
						</div>
					</div>
					<div class="nav navbar-nav navba-topright">
						<ul>
				 		<c:choose>
				 			<c:when test="${empty LOGIN_USER }">
					   			<li class="${current_page eq 'register' ? 'active' : '' }"><a href="register.do"><span class="glyphicon glyphicon-user"></span> 회원가입</a></li>
					   			<li class="${current_page eq 'login' ? 'active' : '' }"><a href="login.do"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
				 			</c:when>
				 			<c:otherwise>
				 				<li><a href="#"><span class="glyphicon glyphicon-log-out"></span> 로그아웃</a></li>
				 			</c:otherwise>
				 		</c:choose>
				 		</ul>
					</div>
					<div class="col-sm-2"></div>
					<div class="row">
						
						<div class="category">
							<ul>
								<div class="col-sm-2" style="margin-bottom: 20px;">
							   		<li class="${current_page eq 'main' ? 'active' : '' }"><a href="#">공지사항</a></li> 				
								</div>
								<div class="col-sm-2">
						   			<li class="${current_page eq 'blog' ? 'active' : '' }"><a href="#">교육</a></li>
								</div>
								<div class="col-sm-2">
						   			<li class="${current_page eq 'blog' ? 'active' : '' }"><a href="#">취미</a></li>
								</div>
								<div class="col-sm-2">
						   			<li class="${current_page eq 'blog' ? 'active' : '' }"><a href="#">대행</a></li>
								</div>
								<div class="col-sm-2">
						   			<li class="${current_page eq 'blog' ? 'active' : '' }"><a href="#">Others</a></li>
								</div>
					 		</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- header? -->	
		</div>
	</nav>
</div>	
</body>
</html>