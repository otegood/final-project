<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
	.container {margin-top: 20px;}
	img.pro-img {width: 200px; height: 200px;}
	img.aa {width: 80px; height: 80px;}
	
	#banner {
	position: absolute;
	top: 0; left: 0;
	z-index: 10;
	padding:5px;
	text-align:center;
	font-weight:bold;
	}
	
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
	position: absolute;	
	bottom : 0;
	width: 100%;
	height: 50px;
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
					<div class="nav navbar-nav navbar-topright">
						<ul>
				 		<c:choose>
				 			<c:when test="${empty LOGIN_USER }">
					   			<li class="${current_page eq 'login' ? 'active' : '' }"><a href="login.do"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
					   			<li class="${current_page eq 'register' ? 'active' : '' }"><a href="register.do"><span class="glyphicon glyphicon-user"></span> 회원가입</a></li>
				 			</c:when>
				 			<c:otherwise>
				 				<li><a href="#"><span class="glyphicon glyphicon-log-out"></span> 로그아웃</a></li>
				 			</c:otherwise>
				 		</c:choose>
				 		</ul>
					</div>
					<div class="col-sm-2"></div>
					<div class="row">
						<div class="container">
 
						<div class="category">
							<ul>
								<div class="col-sm-2">
										<div class="dropdown">
										    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">공지사항
										    <span class="caret"></span></button>
										    <ul class="dropdown-menu">
										      <li><a href="#">공지사항</a></li>
										      <li class="divider"></li>
										      <li><a href="#">요청게시판</a></li>
										      <li class="divider"></li>
										      <li><a href="#">QnA</a></li>
										      <li class="divider"></li>
										    </ul>
									  </div>
									<!--  <li class="${current_page eq 'main' ? 'active' : '' }"><a href="#">공지사항</a></li>
									--> 				
								</div>
								<div class="col-sm-2">
									<div class="dropdown">
										    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">교육
										    <span class="caret"></span></button>
										    <ul class="dropdown-menu">
										      <li><a href="#">언어</a></li>
										      <li class="divider"></li>
										      <li><a href="#">수학</a></li>
										      <li class="divider"></li>
										      <li><a href="#">예체능</a></li>
										      <li class="divider"></li>
										      <li><a href="#">프로그램</a></li>
										    </ul>
									  </div>
						   			<!--  <li class="${current_page eq 'blog' ? 'active' : '' }"><a href="#">교육</a></li>
						   			-->
								</div>
								<div class="col-sm-2">
									<div class="dropdown">
										    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">취미
										    <span class="caret"></span></button>
										    <ul class="dropdown-menu">
										      <li><a href="#">게임</a></li>
										      <li class="divider"></li>
										      <li><a href="#">스터디</a></li>
										      <li class="divider"></li>
										      <li><a href="#">요리</a></li>
										      <li class="divider"></li>
										      <li><a href="#">여행</a></li>
										      <li class="divider"></li>
										      <li><a href="#">운동</a></li>
										    </ul>
									  </div>
						   			<!--  <li class="${current_page eq 'blog' ? 'active' : '' }"><a href="#">취미</a></li>
						   			-->
								</div>
								<div class="col-sm-2">
									<div class="dropdown">
										    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">대행
										    <span class="caret"></span></button>
										    <ul class="dropdown-menu">
										      <li><a href="#">게임</a></li>
										      <li class="divider"></li>
										      <li><a href="#">스터디</a></li>
										      <li class="divider"></li>
										      <li><a href="#">요리</a></li>
										      <li class="divider"></li>
										      <li><a href="#">여행</a></li>
										      <li class="divider"></li>
										      <li><a href="#">운동</a></li>
										    </ul>
									  </div>
						   			<!--  <li class="${current_page eq 'blog' ? 'active' : '' }"><a href="#">대행</a></li>
						   			-->
								</div>
								<div class="col-sm-2">
									<div class="dropdown">
										    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Others
										    <span class="caret"></span></button>
										    <ul class="dropdown-menu">
										      <li><a href="#">상담</a></li>
										    </ul>
									  </div>
						   			<!-- <li class="${current_page eq 'blog' ? 'active' : '' }"><a href="#">Others</a></li>
						   			 -->
								</div>
					 		</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- hedaer? -->	
		</div>
	</nav>
</div>	
		<p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
		<div class="body">
			<div class="container">
					<!-- 내용 기입 -->
					
			</div>
		</div>	
		
		<p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
		
		<div class="footer">
			<nav class="navbar navbar-inverse">
				<div class="container">
						
							<div class="ex-company">
					            <p>회사명: 위드몽 (주)   대표자: 최지웅 &nbsp; 정보처리책임자: 이응수 <br>
									주소: 서울특별시&nbsp; 종로구&nbsp; 봉익동&nbsp; 디아망&nbsp; 빌딩&nbsp;(401, 402호)</br>
									통신판매업신고: 2016-서울금천-8282 호</br>
									사업자번호: 123-45-6789<br>
									이메일: apple@email.com <br>
									대표전화: 1544-8282,  09:00 ~ 18:00,  주말 · 공휴일 휴무<br>
									&nbsp;위드몽은 통신&nbsp;판매&nbsp;중계자로서 거래당사자가 아닙니다.<br>따라서 판매자가 등록한 상품정보 및 거래에 대해 위드몽은 <strong>일체 책임을 지지 않습니다.<strong><br>
								</p>
			       			 </div>
						
					</div>	
				</nav>
			</div>	
		
</body>
</html>




