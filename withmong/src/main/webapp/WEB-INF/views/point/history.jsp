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

	.cash-btn {
		
		text-align: center;
		border: 1;
		color: red;
	
	}
</style>
<title>Insert title here</title>
</head>
<body>
		<header><%@ include file="../header.jsp" %></header>
	
		<div class="container" >
			<div class="row">
				<div class="panel panel-heading">
					<h2>충전 내역</h2>
				</div>
				<div class="panel panel-body">
					<table class="table">
						<thead>
							<tr>
								<th>날짜</th>
								<th>충전 금액(원)</th>
								<th>출금 금액(원)</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="point" items="${pointlist }">
							<tr>
								<td><fmt:formatDate value="${point.regdate }" pattern="yyyy.MM.dd"/></td>
								<td>"${point.charge }"</td>
								<td>"${point.withdraw }"</td>
							</tr>
						</c:forEach>
						</tbody>
						
					</table>
				</div>
				
				<div class="panel panel-footer">
					<div class="cash-btn">
						<a href="withdraw.do" class="btn btn-warning">출금하기</a>
						<a href="charge.do" class="btn btn-success">충전하기</a>
					</div>
				</div>
			</div>
		</div>
		

		<%@ include file="../footer.jsp" %>	
</body>
</html>




