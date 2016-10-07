<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet"
	href="http://fonts.googleapis.com/earlyaccess/nanumpenscript.css" type="text/css">
<style>
.marginBottom-0 {
	margin-bottom: 0;
}

.dropdown-submenu {
	position: relative;
}

.dropdown-submenu>.dropdown-menu {
	top: 0;
	left: 100%;
	margin-top: -6px;
	margin-left: -1px;
	-webkit-border-radius: 0 6px 6px 6px;
	-moz-border-radius: 0 6px 6px 6px;
	border-radius: 0 6px 6px 6px;
}

.dropdown-submenu>a:after {
	display: block;
	content: " ";
	float: right;
	width: 0;
	height: 0;
	border-color: transparent;
	border-style: solid;
	border-width: 5px 0 5px 5px;
	border-left-color: #cccccc;
	margin-top: 5px;
	margin-right: -10px;
}

.dropdown-submenu:hover>a:after {
	border-left-color: #555;
}

.dropdown-submenu.pull-left {
	float: none;
}

.dropdown-submenu.pull-left>.dropdown-menu {
	left: -100%;
	margin-left: 10px;
	-webkit-border-radius: 6px 0 6px 6px;
	-moz-border-radius: 6px 0 6px 6px;
	border-radius: 6px 0 6px 6px;
}

.navbar-brand { font-weight: 400; font-size: 40px; }

.nav navbar nav {
	text-align: pull-right;
}
</style>
<script>
$(document).ready(function(){
	$('ul.dropdown-menu [data-toggle=dropdown]').on('click', function(event) {
		event.preventDefault(); 
		event.stopPropagation(); 
		$(this).parent().siblings().removeClass('open');
		$(this).parent().toggleClass('open');
	});
});

WebFontConfig = {
	    google: { families: [ 'Oswald:300,400,700:latin,latin-ext' ] }
	  };
	  (function() {
	    var wf = document.createElement('script');
	    wf.src = ('https:' == document.location.protocol ? 'https' : 'http') +
	      '://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
	    wf.type = 'text/javascript';
	    wf.async = 'true';
	    var s = document.getElementsByTagName('script')[0];
	    s.parentNode.insertBefore(wf, s);
	  })();


	$('.carousel').carousel({
	  interval: 3000
	})

	
	$(function() {
		
	})
</script>
	<nav class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="main.do"><img
					style="max-width: 100px; margin-top: 0px;" id="brand" font-family="Nanum Pen Script, serif;">	<!-- 로고 이미지 삽입하기 
					<img id="logo" src="resources/images/default/5star.PNG">-->
					With<br /><br />mong7
			
				</a>
			</div>
			<c:choose>
				<c:when test="${empty LOGIN_USER }">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="login.do"><span
								class="glyphicon glyphicon-log-out"></span> 로그인</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="agree.do"><span
								class="glyphicon glyphicon-log-out"></span> 회원가입</a></li>
					</ul>
				</c:when>
				<c:otherwise>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">${LOGIN_USER.name }님 환영합니다. <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li class="dropdown dropdown-submenu"><a href="#"
									class="dropdown-toggle" data-toggle="dropdown">나의 서비스</a>
									<ul class="dropdown-menu">
										<li><a href="myinfo.do">내 정보</a></li>
										<li><a href="mypurchase.do">구매</a></li>
										<li><a href="mysell.do">판매</a></li>
										<li><a href="mycart.do">찜</a></li>
										<li><a href="myrequestlist.do">요청글</a></li>
										<li><a href="messagelist.do">1:1쪽지</a></li>
									</ul></li>
								<li class="divider"></li>
								<li class="dropdown dropdown-submenu"><a href="#"
									class="dropdown-toggle" data-toggle="dropdown">포인트 관리</a>
									<ul class="dropdown-menu">
										<li><a href="history.do">내역</a></li>
										<li><a href="charge.do">충전</a></li>
										<li><a href="withdraw.do">출금</a></li>
									</ul></li>
								<li class="divider"></li>
								<li><a href="logout.do"><span
										class="glyphicon glyphicon-log-out"></span> 로그아웃</a></li>
							</ul>
						</li>
						<!-- 상품 등록링크타기 -->
						<li>
							<a class="" href="addProduct.do">
								<span class="glyphicon glyphicon-plus">
									상품등록
								</span>
							</a>
						</li>
					</ul>
				</c:otherwise>
			</c:choose>

			<div class="navbar-collapse collapse " id="searchbar">
				<form class="navbar-form" action="searchList.do" method="get">
					<div class="form-group" style="display: inline;">
						<div class="input-group" style="display: table;">
							<span class="input-group-addon"
								style="width: 1%; padding-bottom: 0px; padding-top: 0px;">
								<button type="submit">
									<span class="glyphicon glyphicon-search"></span>
								</button>
								<select name="type">
									<option selected="selected" value="title">제목</option>
									<option value="contents">내용</option>
									<option value="tag">태그</option>
									<option value="writer">작성자</option>
								</select>
							</span> <input class="form-control" name="search"
								placeholder="검색" autocomplete="off"
								autofocus="autofocus" type="text">
						</div>
					</div>
				</form>
			</div>
			<!--/.nav-collapse -->
		</div>
	



<div class="container">
	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
	</div>

	<!-- Collect the nav links, forms, and other content for toggling -->
	<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1"
		style="">
		<ul class="nav navbar-nav  ">
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false">공지사항 <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="noticelist.do">공지사항</a></li>
					<li class="divider"></li>
					<li><a href="requestlist.do">요청게시판</a></li>
					<li class="divider"></li>
					<li><a href="qnalist.do">QnA</a></li>

				</ul></li>
		</ul>
		<ul class="nav navbar-nav  ">
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false">교육 <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="categoryList.do?categoryNo=5">언어</a></li>
					<li class="divider"></li>
					<li><a href="categoryList.do?categoryNo=6">수학</a></li>
					<li class="divider"></li>
					<li><a href="categoryList.do?categoryNo=7">예체능</a></li>
					<li class="divider"></li>
					<li><a href="categoryList.do?categoryNo=8">프로그램</a></li>
				</ul></li>
		</ul>
		<ul class="nav navbar-nav  ">
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false">취미 <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="categoryList.do?categoryNo=9" >게임</a></li>
					<li class="divider"></li>
					<li><a href="categoryList.do?categoryNo=10">스터디</a></li>
					<li class="divider"></li>
					<li><a href="categoryList.do?categoryNo=11">요리</a></li>
					<li class="divider"></li>
					<li><a href="categoryList.do?categoryNo=12">여행</a></li>
					<li class="divider"></li>
					<li><a href="categoryList.do?categoryNo=13">운동</a></li>
				</ul></li>
		</ul>

		<ul class="nav navbar-nav  ">
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false">대행 서비스 <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="categoryList.do?categoryNo=14">마케팅</a></li>
					<li class="divider"></li>
					<li><a href="categoryList.do?categoryNo=15">번역</a></li>
					<li class="divider"></li>
					<li><a href="categoryList.do?categoryNo=16">문서작업</a></li>
					<li class="divider"></li>
					<li><a href="categoryList.do?categoryNo=17">대필</a></li>
				</ul></li>
		</ul>

		<ul class="nav navbar-nav  ">
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false">Others <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="categoryList.do?categoryNo=18">상담</a></li>
					<li><a href="categoryList.do?categoryNo=19">기타</a></li>
				</ul></li>
		</ul>
	</div>
	<!-- /.navbar-collapse -->
</div>
</nav>
<!-- /.container-fluid </nav>-->

