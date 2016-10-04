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
<title>충전내역 리스트</title>
</head>
<body>
	<header><%@ include file="../mheader.jsp" %></header>
	
	<div class="container" >
		<h1>충전내역 리스트</h1>
		<table class="table">
			<tr>
				<th>회원 ID</th>
				<th>충전 Point</th>
				<th>출금 Point</th>
				<th>날짜</th>
			</tr>
			<c:forEach var="point" items="${pointList}">
				<tr>
					<td>${point.userid.id }</td>
					<td><fmt:formatNumber value="${point.charge }" type="number"></fmt:formatNumber></td>
					<td><fmt:formatNumber value="${point.withdraw }" type="number"></fmt:formatNumber></td>
					<td><fmt:formatDate value="${point.regdate }" pattern="yyyy.MM.dd hh:mm:ss"/></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<%@ include file="../footer.jsp" %>	
</body>
</html>