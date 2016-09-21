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
	
	.wrap {
	height: auto;
	min-height: 100%;
	position: relative;
	padding-bottom: 180px; /* footer height */
	}
	
	body {
	height: 100%;
	margin: 0;
	padding: 0;
	
	}
	
	.container {
	height: 100%;
	
	}
	.footer {
	height: auto;
	width: 100%;
	margin-top: 150px;
	background-color: black;
	}
</style>
<title>WithMong</title>
</head>
<body>
	<%@ include file="../header.jsp" %>
	
	<!-- 로그인 창 -->		
	<div class="container" style="margin-top: 150px;">
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




