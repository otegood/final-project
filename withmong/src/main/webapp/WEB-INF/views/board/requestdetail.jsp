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
		text-align: center;
	}
</style>

<script type="text/javascript">
	var count = 0;
</script>
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
					<th class="well" width="150px;">번호</th>
					<td>${request.no }</td>
					<th class="well">작성자</th>
					<td>${request.userId.id }</td>
					<th class="well">등록일</th>
					<td><fmt:formatDate value="${request.regdate }" pattern="yyyy-MM-dd EEEE" /></td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th class="well">제목</th>
					<td colspan="5"><c:out value="${request.title }" /></td>
				</tr>
				<tr>
					<th class="well">내용</th>
					<td colspan="5">${request.contents }</td>
				</tr>
			</tbody>
		</table>
		
		<div style="height: 50px;">
			<c:if test="${LOGIN_USER.id eq request.userId.id or LOGIN_USER.id eq 'king'}">
				<a href="requestUpdateForm.do?no=${request.no }" class="btn btn-warning">수정</a>
				<a href="requestDelete.do?no=${request.no }" class="btn btn-danger">삭제</a>
			</c:if>
			<a href="requestlist.do" class="btn btn-warning pull-right">목록</a>
		</div>
		
		<div style="margin-top: 30px;">
			<form role="form" method="post" action="requestReple.do">
				<table >
					<tr>
						<th style="width: 137px;">댓글</th>
						<td>
							<input type="text" hidden="hidden" name="no" value="${request.no }"/>
							<textarea rows="3" style="width:700px;" class="form-control" name="contents"
									  placeholder="명예훼손, 개인정보 유출, 분쟁 유발, 허위사실 유포 등의 글은 이용약관에 의해 제재는 물론 법률에 의해 처벌받을 수 있습니다. 건전한 커뮤니티를 위해 자제를 당부 드립니다." ></textarea>
						</td>
						<td><input type="submit" class="btn btn-primary"  style="height: 73px;" value="댓글등록" /> </td>
					</tr>
				</table>
			</form>
			<br/>
			<p><b>코멘트 (${requestRepleLength} )</b></p>
			<table class="table">
				<c:forEach var="reple" items="${requestReple }">
					<tr>
						<td style="width: 137px;">${reple.userId.id }</td>
						<td style="width:700px;" >${reple.contents }</td>
						<td><fmt:formatDate value="${reple.regdate }" pattern="yyyy-MM-dd EEEE hh:mm:ss" /></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<%@ include file="../footer.jsp" %>	
</body>
</html>