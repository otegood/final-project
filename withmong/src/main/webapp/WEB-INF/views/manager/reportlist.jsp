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

</script>
<title>신고내역</title>
</head>
<body>
		<header>
			<%@ include file="../mheader.jsp" %>
		</header>
		
		<div class="container" >
			<div class="row">
				<h1>신고내역</h1>
				<table class="table table-hover">
					<thead>
						<tr>
							<th>번호</th>
							<th>사유</th>
							<th>내용</th>
							<th>신고자</th>
							<th>신고받는사람</th>
							<th>날짜</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="report" items="${reportList }">
							<tr>
								<td>${report.no }</td>
								<td>${report.reason}</td>
								<td>${report.contents}</td>
								<td>${report.reporter.id}</td>
								<td>${report.suspect.id}</td>
								<td><fmt:formatDate value="${report.regdate }" pattern="yyyy.MM.dd"/></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<%@ include file="../footer.jsp" %>	
</body>
</html>




