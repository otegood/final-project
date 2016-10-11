<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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

#cate-name> value {
	width: 30px;
}
</style>
<script type="text/javascript">
	
</script>
<title>카테고리별 리스트</title>
</head>
<body>
	<header><%@ include file="../header.jsp"%></header>

	<div class="container">
		<!-- 태그 경로 알림 -->
		<div class="row" id="cate-name">
			<c:out value="${category.name}"></c:out>
		</div>
		<hr>
		<!-- 상품 뿌려주는 곳 -->
		<c:forEach var="p" items="${products}">
			<div class="row" style="margin-bottom: 20px;">
				<div class="col-sm-2">
					<a href="detail.do?productNo=${p.no}"><img width="100px"
						height="100px" src="../../resources/images/${p.img }"> </a>
				</div>
				<div class="col-sm-4">
					제목 : <a href="detail.do?productNo=${p.no }"> <c:choose>
							<c:when test="${fn:length(p.title) > 36}">
                                 ${fn:substring(p.title, 0, 35)}...</c:when>
							<c:otherwise>
                                 ${p.title}
                              </c:otherwise>
						</c:choose>
					</a> 
					<br /><br /><br />
					<p>
						내용:
						<c:choose>
							<c:when test="${fn:length(p.contents) > 160}">
	                                 ${fn:substring(p.contents, 0, 160)}...</c:when>
								  <c:otherwise>
	                               	  ${p.contents}
	                              </c:otherwise>
						</c:choose>
					</p>
				</div>
				<div class="col-sm-3">
					<p>작성자: ${p.userid } </p>
				</div>
				 
				<div class="col-sm-3">
					<p>조회수 : ${p.hits }</p>
					<p>평점:  ${p.avglike }점</p>
					<p>포인트 : ${p.price }P</p>
				</div>
			</div>
			<hr>
		</c:forEach>
		<!-- 페이지네이션 처리-->
		<div class="row text-center">
			<ul class="pagination">
			<c:if test="${param.pno gt 1 }">
    			<li>
      				<a href="categoryList.do?categoryNo=${param.categoryNo}&pno=${param.pno - 1 }" aria-label="Previous">
        				<span aria-hidden="true">&laquo;</span>
      				</a>
    			</li>
    		</c:if>
    		<c:forEach var="num" begin="${navi.beginPage }" end="${navi.endPage }">
    			<c:choose>
    				<c:when test="${param.pno eq num }">
    					<li class="active"><a href="categoryList.do?categoryNo=${param.categoryNo }&pno=${num }">${num }</a></li>
    				</c:when>
    				<c:otherwise>
					    <li><a href="categoryList.do?categoryNo=${param.categoryNo }&pno=${num }"">${num }</a></li>
    				</c:otherwise>
    			</c:choose>
    		</c:forEach>
    		<c:if test="${param.pno lt navi.totalPages}">
    			<li>
      				<a href="categoryList.do?categoryNo=${param.categoryNo }&pno=${param.pno + 1 }" aria-label="Next">
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




