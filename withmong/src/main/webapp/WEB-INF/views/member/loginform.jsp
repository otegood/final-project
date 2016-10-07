<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

	#footer {
		padding: 10px;
		background-color: black;
	}

</style>
<title>WithMong</title>
</head>
<body>
		<header><%@ include file="../header.jsp" %></header>
	
		<div class="container" >
		<div>
			<c:if test="${param.error eq 'req' }">
				<div class="alert alert-danger">
					<strong>에러!</strong> 로그인이 필요한 서비스 입니다.
				</div>
			</c:if>
			<div class="col-md-6 col-md-offset-3 well">
				<form class="form-inline text-center" role="form" method="post" action="login.do">
				    <div class="form-group">
				     	 <label class="sr-only" for="id">Id:</label>
				     	 <input type="text" class="form-control" name="id" id="id" placeholder="아이디를 입력하세요" autocomplete="off">
				    </div>
				    <div class="form-group">
				      	<label class="sr-only" for="password">Password:</label>
				     	 <input type="password" class="form-control" name="password" id="password" placeholder="비밀번호를 입력하세요" autocomplete="off">
				    </div><br/><br/>
				    <div class="form-group">
				    	<input type="submit" class="btn btn-primary" value="로그인" />
						<a href="main.do" class="btn btn-default">취소</a>
					</div>
					<br/><br/>
					<div>
						<a href="find.do" style="text-decoration:underline;">아이디/비밀번호를 잊었다면?</a>
					</div>
				</form>
			</div>
		
		</div>
		
		</div>
		
		<%@ include file="../footer.jsp" %>	
</body>
</html>