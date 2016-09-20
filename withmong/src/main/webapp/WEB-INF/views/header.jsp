<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

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
</body>
</html>