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
<title>Insert title here</title>
</head>
<body>
		<header><%@ include file="../header.jsp" %></header>
	
		<div class="container" >
			<h1>로그인 폼</h1>
		<div class="well">
			<c:if test="${param.error eq 'req' }">
				<div class="alert alert-danger">
					<strong>에러!</strong> 로그인이 필요한 서비스 입니다.
				</div>
			</c:if>
			
			<form class="form-inline text-center" role="form" method="post" action="confirmpw.do">
			    <div class="form-group">
			     <h2>보안을 위하여 사용자의 비밀번호를 입력하여주십시오.</h2>
			    </div>
			    <div class="form-group">
			    	<input type="hidden" class="form-control" value="${LOGIN_USER.id }" name="id" id="id">
			      	<label class="sr-only" for="password">Password:</label>
			     	<input type="password" class="form-control" name="password" id="password" placeholder="비밀번호를 입력하세요" autocomplete="off">
			    </div>
			    <div class="form-group">
			    	<input type="submit" class="btn btn-primary" value="확인" />
					<a href="myinfo.do" class="btn btn-default">돌아가기</a>
				</div>
				<br/>
			  </form>
		
		</div>
		
		</div>
		
		<%@ include file="../footer.jsp" %>	
</body>
</html>