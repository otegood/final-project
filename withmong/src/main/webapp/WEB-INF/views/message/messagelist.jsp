<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	

	.ex-company {
	color: white;
	top: 0; left: 0;
	border;
	}
	
	strong {
	color: red;
	top: 0; left: 0;
	}
	
	.footer { 
	position: absolute;	
	bottom : 0;
	width: 100%;
	height: 50px;
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

</style>
<title>Insert title here</title>
</head>
<header>
	<%@ include file="../header.jsp" %>
</header>
<body>
	<div class="container" style="margin-top: 150px;">
		<h1>메세지 보관소</h1>
		
		<div class="panel panel-boby">
			<table class="table">
				<thead>
					<tr>
						<th>보낸이</th>
						<th>내용</th>
						<th>받은날짜</th>
					</tr>
				</thead>
				<tbody>
				<%--
				<c:forEach var="blog" items="${blogList }">
					<c:url var="detailURL" value="detail.do">
						<c:param name="no" value="${blog.no}" />
						<c:param name="opt" value="${param.opt }" />
						<c:param name="keyword" value="${param.keyword }" />
					</c:url>
					<tr>
						<td>${blog.no }</td>
						<td><a href="${detailURL }"><c:out value="${blog.title }"/></a></td>
						<td>${blog.writer.name }</td>
						<td><fmt:formatDate value="${blog.regdate }" pattern="yyyy.MM.dd EEEE"/></td>
					</tr>	
				</c:forEach>
				 --%>
				</tbody>
			</table>
		</div>
		
	</div>
	<%@ include file="../footer.jsp" %>	
</body>
</html>




