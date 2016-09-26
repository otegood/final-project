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
<title>나의 정보</title>
</head>
<body>
		<header><%@ include file="../header.jsp" %></header>
	
		<div class="container" >
			<div class="row">
	        	<h1>내정보</h1>
	        	<img alt="" src="" >
				<table class="table table striped" style="width:100%;">
			        <tr>
			            <th>ID</th>
			            <td>${LOGIN_USER.id}</td>
			            <th>등급</th>
			            <td>${LOGIN_USER.grade}</td>
			        </tr>
			        <tr>
			            <th>이름</th>
			            <td>${LOGIN_USER.name}</td>
			            <th>포인트</th>
			            <td>${LOGIN_USER.point}p</td>
			        </tr>
			        <tr>
			            <th>생년월일</th>
			            <td><fmt:formatDate pattern="yyyy년 MM월 dd일" value="${LOGIN_USER.birth}"/></td>
			        </tr>
			        <tr>
			            <th>이메일</th>
			            <td>${LOGIN_USER.email}</td>
			        </tr>
			        <tr>
			            <th>전화번호</th>
			            <td>${LOGIN_USER.phone}</td>
			        </tr>
			        <tr>
			            <th>성별</th>
			            <td>${LOGIN_USER.gender}</td>
			        </tr>
			        <tr>
			            <th>학력</th>
			            <td>${LOGIN_USER.schoolAbility}</td>
			        </tr>
			    </table>
			    <div class="text-center">
				    <a href="confirmpw.do" class="btn btn-primary">정보수정</a>
				    <a href="main.do" class="btn btn-danger">메인으로</a>
			    </div>
			    <br/>
			</div>
		</div>
		

		<%@ include file="../footer.jsp" %>	
</body>
</html>




