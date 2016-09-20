<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="current_page" value="login" /> 
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
<title>WithMong</title>
</head>
<body>
	<%@ include file="../header.jsp" %>
	
	<!-- 로그인 창 -->		
	<div class="container">
		<h1>로그인 폼</h1>
		<div class="well">
			<c:if test="${param.error eq 'req' }">
				<div class="alert alert-danger">
					<strong>에러!</strong> 로그인이 필요한 서비스 입니다.
				</div>
			</c:if>
			
			<form role="form" method="post" action="login.do">
					<div class="form-group">
						<label>아이디</label>
						<input type="text" class="form-control" name="id" />
					</div>
					<div class="form-group">
						<label>비밀번호</label>
						<input type="password" class="form-control" name="password" />
					</div>
					<div class="form-group text-right">
						<input type="submit" class="btn btn-primary" value="로그인" />
						<a href="main.do" class="btn btn-default">취소</a>
					</div>
			</form>
		
		</div>
		
	</div>				
	
	<%@ include file="../footer.jsp" %>	
</body>
</html>




