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
<title>거래내역</title>
</head>
<body>
	<header><%@ include file="../mheader.jsp" %></header>
	
	<div class="container" >
		<table class="table">
			<tr>
				<th>번호</th>
				<th>상품번호</th>
				<th>구매자</th>
				<th>날짜</th>
				<th>구매금액</th>
				<th>진행상황</th>
			</tr>	
			<c:forEach var="order" items="${orderList }">
				<tr>
					<td>${order.no }</td>
					<td>${order.productNo.no }</td>
					<td>${order.userid.id }</td>
					<td><fmt:formatDate value="${order.regdate }" pattern="yyyy-MM-dd hh:mm:ss"/></td>
					<td><fmt:formatNumber value="${order.productNo.price }"></fmt:formatNumber> </td>
					<td>${order.buyCheck }</td>
				</tr>
			</c:forEach>	
		</table>
	</div>
	<%@ include file="../footer.jsp" %>	
</body>
</html>