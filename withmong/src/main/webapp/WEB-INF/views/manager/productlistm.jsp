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
	th{
		text-align: center;
	}
</style>
<script type="text/javascript">

<!-- tr눌렀을때 페이지 이동시키기 -->
$(function(){
	$("#chain table").click(function(){
		$(location).attr('href', 'detail.do?productNo='+$(this).find("th:first").text());
	});
});

</script>
<title>상품목록</title>
</head>
<body>
	<header><%@ include file="../mheader.jsp" %></header>

	<div class="container" id="chain">
		<h1>상품 목록</h1>
		<br/>
		<c:forEach var="product" items="${productList }">
			<table class="table" style="margin-bottom: 20px;" border="1">
				<tr>
					<th style="width: 100px;">${product.no }</th>
					<th style="width: 300px;">제목</th>
					<th style="width: 300px;">판매자</th>
					<th>상품가격</th>
					<th style="width: 110px;">Danger</th>
				</tr>
				<tr>
					<td rowspan="3"><img src="resources/images/${product.img }" style="width: 100px; height: 100px;"></td>
					<td>${product.title }</td>
					<td>${product.userid }</td>
					<td><fmt:formatNumber value="${product.price }"></fmt:formatNumber>point</td>
					<td rowspan="3">
						<a class="btn btn-danger btn-xl" href="deleteProduct.do?no=${product.no }" style="height: 100px; width:100px;">
							<font size="6">삭제</font>
						</a>
					</td>
				</tr>
				<tr>
					<th>평점</th>
					<th>조회수</th>
					<th>등록일</th>
				</tr>
				<tr>
					<td>${product.avglike }</td>
					<td>${product.hits }</td>
					<td><fmt:formatDate value="${product.regDate }"
							pattern="yyyy-MM-dd hh:mm:ss" /></td>
				</tr>
			</table>
		</c:forEach>
	</div>
	<%@ include file="../footer.jsp" %>	
</body>
</html>