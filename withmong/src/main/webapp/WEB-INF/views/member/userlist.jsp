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
<title>회원목록</title>
</head>
<body>
	<header><%@ include file="../mheader.jsp" %></header>
	
	<div class="container" >
		<h1>회원 목록</h1>
		<div class="panel panel-boby">
			<table class="table">
				<thead>
					<tr>
						<th>계정</th>
						<th>이름</th>
						<th>생년월일</th>
						<th>이메일</th>
						<th>연락처</th>
						<th>성별</th>
						<th>학력</th>
						<th>포인트</th>
						<th>등급</th>
						<th>삭제여부</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="users" items="${userList }">
					<c:if test="${users.delCheck eq 'Y' }">
						<tr class="danger">					
					</c:if>
					<c:if test="${users.delCheck eq 'N' }">
						<tr>
					</c:if>
						<td>
							<c:choose>
								<c:when test="${users.id ne 'king' }">
									<a class="btn btn-info btn-xs" href="userdetailm.do?id=${users.id}">${users.id }</a>
								</c:when>
								<c:otherwise>
									${users.id }
								</c:otherwise>
							</c:choose>
						</td>
						<td>${users.name }</td>
						<td><fmt:formatDate value="${users.birth }" pattern="yyyy.MM.dd"/></td>
						<td>${users.email }</td>
						<td>${users.phone }</td>
						<td>${users.gender }</td>
						<td>${users.schoolAbility }</td>
						<td>${users.point }</td>
						<td>${users.grade }</td>
						<td>
							<c:if test="${users.id ne 'king' }">
							${users.delCheck }
								<c:if test="${users.delCheck eq 'N' }">
									<a href="deleteUser.do?id=${users.id }" class="btn btn-danger btn-xs">삭제</a>
								</c:if>
								<c:if test="${users.delCheck eq 'Y' }">
									<a href="restoreUser.do?id=${users.id }" class="btn btn-success btn-xs">복구</a>
								</c:if>
							</c:if>
							<c:if test="${users.id eq 'king' }">
								삭제불가
							</c:if>
						</td>
					</tr>	
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<%@ include file="../footer.jsp" %>	
</body>
</html>