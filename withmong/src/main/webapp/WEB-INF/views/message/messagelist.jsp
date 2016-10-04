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

	#footer {
		padding: 10px;
		background-color: black;
	}

</style>
<title>Insert title here</title>
</head>
<body>
	<header><%@ include file="../header.jsp"%></header>

	<div class="container">
		<h1>1:1 쪽지방</h1>
		
		<div style="text-align: right">
			<a href="firstmessage.do" class="btn btn-danger">쪽지보내기</a>
		</div>
		
		<h4><b>쪽지방 [쪽지를 받아야 대화방이 생성됩니다.]</b></h4>
		<br/>
		<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
			<c:forEach  var="message" items="${messageList }">
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingOne">
						<h4 class="panel-title">
							<a role="button" data-toggle="collapse" data-parent="#accordion" href="#${message.sender.id }" aria-expanded="true"
							aria-controls="collapseOne"> <c:out value="${message.sender.id }" />님과 대화내용 </a>
						</h4>
					</div>
					<div id="${message.sender.id }" class="panel-collapse collapse"	role="tabpanel" aria-labelledby="headingOne">
						<div class="panel-body">
							<div class="col-sm-6">
								<c:forEach var="by" items="${onebyoneList}">
									<div class="row">
										<c:if test="${by.sender.id eq message.sender.id or by.receiver.id eq message.sender.id }">
											<c:if test="${by.sender.id eq message.sender.id }">
												<div class="alert alert-danger" role="alert" style="width: 300px; height: auto;">
											</c:if>
											<c:if test="${by.receiver.id eq message.sender.id }">
												<div class="alert alert-info pull-right"  role="alert" style="width: 300px; height: auto;">
											</c:if>
												${by.sender.id } <br />
												${by.contents } <br />
												<p style="text-align: right;"><small><fmt:formatDate value="${by.senddate }" pattern="yyyy.MM.dd EEEE hh:mm:ss" /></small></p><br />
												</div>
										</c:if>
									</div>
								</c:forEach>
								<div>
									<form role="form" method="post" action="firstmessage.do">
										<table>
											<tr>
												<td>
													<input type="text" name="receiver.id" id="receiver.id" value="${message.sender.id }" hidden="hidden"> 
													<textarea rows="4" cols="57" style="resize: none;" placeholder="입력해주세요" name="contents"></textarea>
												</td>
												<td><input type="submit" class="btn btn-info" style="height: 60pt; margin-left: 25px;" value="보내기"></td>
											</tr>
										</table>
									</form>
								</div>
							</div>
							<div class="col-sm-6" style="position: fixed;margin-top: 10px; right: 45%; margin-right: -300px; background-color: white; width: auto;">
								${message.sender.id }님 프로필<br/>
								<img alt="" src="resources/images/profile/${message.sender.img }" width="200px;" height="180px"><br/>
								등급 : <c:if test="${message.sender.grade eq 'B'}">브론즈</c:if>
									 <c:if test="${message.sender.grade eq 'S'}">실버</c:if>
									 <c:if test="${message.sender.grade eq 'G'}">골드</c:if><br/>
								성별 : <c:if test="${message.sender.gender eq 'M'}">남자</c:if>
									 <c:if test="${message.sender.gender eq 'F'}">여자</c:if> <br/>
								학력 : ${message.sender.schoolAbility }<br/>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<%@ include file="../footer.jsp"%>
</body>
</html>