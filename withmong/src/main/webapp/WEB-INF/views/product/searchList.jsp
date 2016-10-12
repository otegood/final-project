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
$(function() {
	console.log('${searchIndex}');
	if('${searchIndex}' == 0){
		alert("검색한 결과가 없습니다.");
	}
	
});
</script>
<title>Insert title here</title>
</head>
<body>
	<header><%@ include file="../header.jsp"%></header>

	<div class="container">
			<c:forEach var="search" items="${searchList}">
		<div class="row" id="row">
				<div class="col-sm-2">
					<a href="detail.do?productNo=${search.no }"><img width="100px" height="100px" src="../../resources/images/${search.img }">
					</a>
				</div>
				<div class="col-sm-8">
					<h4>
						제목 : <a href="detail.do?productNo=${search.no }">
						<c:choose>
                              <c:when test="${fn:length(search.title) > 36}">
                                 ${fn:substring(search.title, 0, 35)}...</c:when>
                              <c:otherwise>
                                 ${search.title}
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
			
	<!-- 페이지네이션 해볼까  -->
		<div class="row text-center">
			<ul class="pagination">
			<c:if test="${param.pno gt 1 }">
    			<li>
      				<a href="searchList.do?type=${param.type }&search=${param.search}&pno=${param.pno - 1 }" aria-label="Previous">
        				<span aria-hidden="true">&laquo;</span>
      				</a>
    			</li>
    		</c:if>
    		<c:forEach var="num" begin="${page.beginPage }" end="${page.endPage }">
    			<c:choose>
    				<c:when test="${param.pno eq num }">
    					<li class="active"><a href="searchList.do?type=${param.type }&search=${param.search}&pno=${num }">${num }</a></li>
    				</c:when>
    				<c:otherwise>
					    <li><a href="searchList.do?type=${param.type }&search=${param.search}&pno=${num }">${num }</a></li>
    				</c:otherwise>
    			</c:choose>
    		</c:forEach>
    		<c:if test="${param.pno lt page.totalPages}">
    			<li>
      				<a href="searchList.do?type=${param.type }&search=${param.search}&pno=${param.pno + 1 }" aria-label="Next">
        				<span aria-hidden="true">&raquo;</span>
      				</a>
    			</li>
    		</c:if>
  			</ul>
		</div>
	
			
			
			
			
			
	</div>

	




	<%@ include file="../footer.jsp"%>
</body>
</html>




