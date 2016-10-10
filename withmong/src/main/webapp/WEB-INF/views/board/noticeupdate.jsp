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
<title>공지사항 수정페이지</title>
</head>
<body>
	<header>
		<%@ include file="../mheader.jsp" %>
	</header>
	<div class="container" >
		<h1>공지사항 수정페이지</h1>
		<form role="form" method="post" action="noticeDbUpdate.do">
			<table class="table">
				<thead>
					<tr>
						<th>번호</th>
						<td><input type="text" hidden="hidden" name="no" value="${notice.no }">${notice.no }</td>
						<th>등록일</th>
						<td><fmt:formatDate value="${notice.regdate }" pattern="yyyy-MM-dd EEEE" /></td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th>제목</th>
						<td colspan="3"><input type="text" class="form-control" value="${notice.title }" name="title"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="3"><textarea class="form-control" rows="10" cols="60" name="contents"  style="resize:none;">${notice.contents }</textarea></td>
					</tr>
				</tbody>
			</table>
			
			<div>
				<input type="submit" class="btn btn-primary" value="완료" />
				<a href="noticeDetail.do?no=${notice.no }" class="btn btn-danger">취소</a>
			</div>
		</form>
	</div>
	<%@ include file="../footer.jsp" %>	
</body>
</html>




