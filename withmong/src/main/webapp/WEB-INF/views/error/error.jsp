<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isErrorPage="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
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

</style>
<title>Insert title here</title>
</head>
<body>
		<header><%@ include file="../header.jsp" %></header>
		
	<!-- Error -->
		<div class="container" >
			<div class="row">
				<h1>에러페이지</h1>
				<div class="alert alert-danger">
					<strong>에러!</strong> <%=exception.getMessage() %>
					<a href="main.do" class="alert-link">홈으로 이동하기</a>
				</div>
			</div>
		</div>
		

		<%@ include file="../footer.jsp" %>	
</body>
</html>




