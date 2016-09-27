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
		background-color: lightblue;
	}
</style>
<title>회원정보</title>
</head>
<body>
	<header><%@ include file="../mheader.jsp" %></header>
	
	<div class="container" >
		<h1>회원 정보</h1>
		<div class="panel panel-boby">
			<table class="table">
				<thead>
					<tr>
						<th>사진</th>
						<th>아이디</th>
						<th>이름</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td rowspan="5"></td>
						<td>${userdetail.id }</td>
						<td>${userdetail.name }</td>
					</tr>
					<tr>
						<th>등급</th>
						<th>평점합계</th>
					</tr>
					<tr>
						<td>${userdetail.grade }</td>
						<td>${userdetail.sumLike }</td>
					</tr>
					<tr>
						<th>생일</th>
						<th>이메일</th>
					</tr>
					<tr>
						<td><fmt:formatDate value="${userdetail.birth }" pattern="yyyy.MM.dd"/></td>
						<td>${userdetail.email }</td>
					</tr>
					<tr>
						<th>연락처</th>
						<th>성별</th>
						<th>학력</th>
					</tr>
					<tr>
						<td>${userdetail.phone }</td>
						<td>${userdetail.gender }</td>
						<td>${userdetail.schoolAbility }</td>
					</tr>
					<tr>
						<th>질문</th>
						<th>답변</th>
						<th>잔여포인트</th>
					</tr>
					<tr>
						<td>${userdetail.question }</td>
						<td>${userdetail.answer }</td>
						<td>${userdetail.point }</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<%@ include file="../footer.jsp" %>	
</body>
</html>