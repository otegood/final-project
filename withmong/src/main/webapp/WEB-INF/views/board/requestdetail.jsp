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
	th{
		background-color: lightgreen;
	}
</style>
<title>요청게시판 상세페이지</title>
</head>
<body>
	<header>
		<c:if test="${LOGIN_USER.id eq 'king' }">
			<%@ include file="../mheader.jsp" %>
		</c:if>
		<c:if test="${LOGIN_USER.id ne 'king' }">
			<%@ include file="../header.jsp" %>
		</c:if>
	</header>
	<div class="container" >
		<h1>요청게시판 상세페이지</h1>
		<table class="table">
			<thead>
				<tr>
					<th>번호</th>
					<td>${request.no }</td>
					<th>작성자</th>
					<td>${request.userId.id }</td>
					<th>등록일</th>
					<td><fmt:formatDate value="${request.regdate }" pattern="yyyy-MM-dd EEEE" /></td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>제목</th>
					<td colspan="5"><c:out value="${request.title }" /></td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="5">${request.contents }</td>
				</tr>
			</tbody>
		</table>
		
		<div>
			<c:if test="${LOGIN_USER.id eq request.userId.id }">
				<a href="requestUpdateForm.do?no=${request.no }" class="btn btn-warning">수정</a>
				<a href="requestDelete.do?no=${request.no }" class="btn btn-danger">삭제</a>
			</c:if>
			<a href="requestlist.do" class="btn btn-primary pull-right">목록</a>
		</div>
		
		<div style="margin-top: 30px;">
			<h4>댓글</h4>
			<form role="form" method="post" action="">
				
			</form>
		</div>
	</div>
	<%@ include file="../footer.jsp" %>	
</body>
</html>