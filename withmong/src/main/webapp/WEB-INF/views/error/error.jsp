<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isErrorPage="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/jquery/jquery/jquery.js"></script>
<style type="text/css">
	.container {margin-top: 20px;}
	img.pro-img {width: 200px; height: 200px;}
	img.aa {width: 80px; height: 80px;}
	

	.ex-company {
	color: white;
	top: 0; left: 0;
	border;
	}
	
	strong {
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
	<%@ include file="../header.jsp" %>
		
	<!-- Error -->
	<div class="container" style="margin-top: 150px;">
		<h1>에러페이지</h1>
		<div class="alert alert-danger">
			<strong>에러!</strong> <%=exception.getMessage() %>
			<a href="main.do" class="alert-link">홈으로 이동하기</a>
		</div>
	</div>
	
	<%@ include file="../footer.jsp" %>	
</body>
</html>




