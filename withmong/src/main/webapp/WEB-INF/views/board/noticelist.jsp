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

</style>
<script type="text/javascript">
$(function(){
	$("#chain").click(function(){
		$(location).attr('href', 'no');
	});
});
</script>
<title>공지사항</title>
</head>
<body>
		<header>
			<c:choose>
				<c:when test="${LOGIN_USER.id eq 'king' }">
					<%@ include file="../mheader.jsp" %>
				</c:when>
				<c:otherwise>
					<%@ include file="../header.jsp" %>
				</c:otherwise>
			</c:choose>
		</header>
		
		<div class="container" >
			<div class="row">
				<h1>공지사항</h1>
				<c:if test="${LOGIN_USER.id eq 'king' }">
					<a class="btn btn-primary" href="noticeRegister.do">글 쓰기</a>
				</c:if>
				<table class="table table-hover">
					<thead>
						<tr>
							<th>글번호</th>
							<th>제목</th>
							<th>게시일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="notice" items="${notices }">
							<tr id="chain">
								<td id="noticeNo">${notice.no }</td>
								<td>${notice.title }</td>
								<td><fmt:formatDate value="${notice.regdate }" pattern="yyyy.MM.dd"/></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

		<%@ include file="../footer.jsp" %>	
</body>
</html>




