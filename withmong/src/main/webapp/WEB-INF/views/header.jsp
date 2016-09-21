<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<div class="navbar navbar-inverse">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"></a>
		</div>
			<c:choose>
				<c:when test="${empty LOGIN_USER }">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="login.do"><span class="glyphicon glyphicon-log-out"></span> 로그인</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="regist.do"><span class="glyphicon glyphicon-log-out"></span> 회원가입</a></li>
					</ul>
				</c:when>
				<c:otherwise>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#"><span class="glyphicon glyphicon-log-out"></span> 로그아웃</a></li>
						<!--  님 환영해요 넣는곳
						-->
					</ul>
				</c:otherwise>
			</c:choose>
			
		<div class="navbar-collapse collapse " id="searchbar">
			<form class="navbar-form" action="#">
				<div class="form-group" style="display: inline;">
					<div class="input-group" style="display: table;">
						<span class="input-group-addon" style="width: 1%;padding-bottom: 0px;padding-top: 0px;">
							<button type="submit"><span class="glyphicon glyphicon-search"></span></button>
						</span> 
						<input class="form-control" name="search" placeholder="Search Here" autocomplete="off" autofocus="autofocus" type="text">
					</div>
				</div>
			</form>
		</div>
		<!--/.nav-collapse -->
	</div>
</div>

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</button>
			
			<!-- 로고 이미지 삽입하기 
			<img id="logo" src=""></a>
				-->
			<a class="navbar-brand" href="#">Brand</a>
			
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav  navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Others <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">상담</a></li>
						<li><a href="#">기타</a></li>
					</ul>
				</li>
			</ul>
			<ul class="nav navbar-nav  navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">대행 서비스 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">마케팅</a></li>
						<li class="divider"></li>
						<li><a href="#">번역</a></li>
						<li class="divider"></li>
						<li><a href="#">문서작업</a></li>
						<li class="divider"></li>
						<li><a href="#">대필</a></li>
					</ul>
				</li>
			</ul>
			<ul class="nav navbar-nav  navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">취미 <span class="caret"></span></a>
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
				</li>
			</ul>
			<ul class="nav navbar-nav  navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">교육 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">언어</a></li>
						<li class="divider"></li>
						<li><a href="#">수학</a></li>
						<li class="divider"></li>
						<li><a href="#">예체능</a></li>
						<li class="divider"></li>
						<li><a href="#">프로그램</a></li>
					</ul>
				</li>
			</ul>
			<ul class="nav navbar-nav  navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">공지사항 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">공지사항</a></li>
						<li class="divider"></li>
						<li><a href="#">요청게시판</a></li>
						<li class="divider"></li>
						<li><a href="#">QnA</a></li>
						<li class="divider"></li>
					</ul>
				</li>
			</ul>
			
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>
