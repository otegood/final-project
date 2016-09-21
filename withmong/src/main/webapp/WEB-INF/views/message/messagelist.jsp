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
	
	img.pro-img {width: 200px; height: 200px;}
	img.aa {width: 80px; height: 80px;}
	
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
	
	.wrap {
	height: auto;
	min-height: 100%;
	position: relative;
	padding-bottom: 180px; /* footer height */
	}
	
	body {
	height: 100%;
	margin: 0;
	padding: 0;
	
	}
	
	.container {
	height: 100%;
	
	}
	#footer {
	
	background-color: black;
	}

</style>
<title>Insert title here</title>
</head>
<header>
	<%@ include file="../header.jsp" %>
</header>
<body>
	<div class="container" style="margin-top: 150px;">
		<h1>1:1 대화방</h1>
		
		<div class="panel panel-boby">
			<table class="table">
				<thead>
					<tr>
						<th>대화방</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="message" items="${messageList }">
					<tr>
						<td>
							<a class="btn btn-warning" role="button" data-toggle="collapse" href="#${message.sender }" aria-expanded="false" aria-controls="collapseExample">
							<c:out value="${message.sender }"/>님과 대화내용</a>
							<div class="collapse" id="${message.sender }">
								<div class="well">
									<c:forEach var="by" items="${onebyoneList}">
										<c:if test="${by.sender eq message.sender or by.receiver eq message.sender }">
											<c:if test="${by.sender eq message.sender }">
												<div class="alert alert-info"  role="alert" style="width: 300px; height: auto;">
											</c:if>											
											<c:if test="${by.receiver eq message.sender }">
												<div class="alert alert-warning"  role="alert"  style="width: 300px; height: auto;">
											</c:if>
												${by.sender } <br/>
												${by.contents } <br/>
												<fmt:formatDate value="${by.senddate }" pattern="yyyy.MM.dd EEEE hh:mm:ss"/><br/>
											</div>
										</c:if>
									</c:forEach>
								</div>
							</div>
						</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	<%@ include file="../footer.jsp" %>	
	</div>
</body>
</html>




