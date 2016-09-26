<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
	
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
	
	h2 {
		text-align: center;
	}
	#frames{
		height: 400px;
	}
</style>
<title>관리자 페이지</title>
</head>
<body>
	<header><%@ include file="mheader.jsp" %></header>
	
	<div class="container" style="margin-bottom: 30px;" >
		<div class="row col-sm-6" id="frames">
			<h2>게시판 관리</h2>
			<div style="text-align: right">
				<a class="btn btn-xs btn-default" href="">더 보기</a>
			</div>
			
			<!-- 게시판 리스트 -->
			<div>
			
			</div>
		</div>
			
		<div class="row col-sm-6" id="frames">
			<h2>회원 관리</h2>
			<div style="text-align: right">
				<a class="btn btn-xs btn-info" href="">더 보기</a>
			</div>
			
			<!-- 회원리스트 -->
			<div>
			
			</div>
		</div>
		
		<div class="row col-sm-6" id="frames">
			<h2>신고 관리</h2>
			<div style="text-align: right">
				<a class="btn btn-xs btn-danger" href="">더 보기</a>
			</div>
			
			<!-- 신고리스트 -->
			<div>
			
			</div>
		</div>
			
		<div class="row col-sm-6" id="frames">
			<h2>거래 내역</h2>
			<div style="text-align: right">
				<a class="btn btn-xs btn-warning" href="">더 보기</a>
			</div>
			
			<!-- 거래내역 리스트 -->
			<div>
			
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp" %>	
</body>
</html>




