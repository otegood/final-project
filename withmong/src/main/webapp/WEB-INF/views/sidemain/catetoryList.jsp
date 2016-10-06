<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
header {
	background-color: black;
}

.ex-company {
	color: white;
	top: 0;
	left: 0;
	border;
}

strong {
	color: yellow;
	top: 0;
	left: 0;
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
	
</script>
<title>Insert title here</title>
</head>
<body>
	<header><%@ include file="../header.jsp"%></header>

	<div class="container">
	<!-- 태그 경로 알림 -->
			<div class="row">
				<div class="col-sm-3">${catelist.cateBName} > ${catelist.cateSName }</div>
			</div>
			
			<c:forEach var="search" items="${catelist}">
		<div class="row" id="row">
				<div class="col-sm-2">
					<a href="detail.do?productNo=${catelist.no }"><img width="100px" height="100px" src="../../resources/images/${search.img }">
					</a>
				</div>
				<div class="col-sm-8">
					<h4>
						제목 : <a href="detail.do?productNo=${catelist.no }">
						<c:choose>
                              <c:when test="${fn:length(catelist.title) > 36}">
                                 ${fn:substring(catelist.title, 0, 35)}...</c:when>
                              <c:otherwise>
                                 ${catelist.title}
                              </c:otherwise>
                           </c:choose>
						
						</a>
					</h4>
						<c:choose>
                              <c:when test="${fn:length(search.contents) > 160}">
                                 ${fn:substring(search.contents, 0, 160)}...</c:when>
                              <c:otherwise>
                                 ${search.contents}
                              </c:otherwise>
                           </c:choose>
				</div>
				<div class="col-sm-2">
					<p>조회수 : ${search.hits }</p>
					<p>평점 : ${search.avglike }</p>
					<p>가격 : ${search.price }</p>
				</div>
		</div>
		<hr>
			</c:forEach>
	</div>


	<%@ include file="../footer.jsp"%>
</body>
</html>




