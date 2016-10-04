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
$(function() {
	
	$.ajax({
		url:"../userinfo.do",
		data:{id:'${param.id}'},
		dataType:"json",
		success: function(data) {
			console.log(data);		// 전체 객체가 한꺼번에나옴
			
			$("#id").append(data.id);
			$("#email").append(data.email);
			$("#img").append("<img alt='profile' src='resources/images/profile/"+data.img+"' style='width:200px;height:200px;border:0;'>");
		}
	});	
});
</script>
<title>나의 정보</title>
</head>
<body>
		<header><%@ include file="../header.jsp" %></header>
	
		<div class="container" >
			<div class="row">
	        	<h1>정보보기</h1>
	        	<div class="text-center" id="img">
		        	
	        	</div>
				<table class="table table-striped" style="width:100%;">
			        <tr>
			            <th><span class="glyphicon glyphicon-user"></span></th>
			            <td id="id"></td>
			        </tr>
			        <tr>
			            <th><span class="glyphicon glyphicon-envelope"></span></th>
			            <td id="email"></td>
			        </tr>
			    </table>
			    <div class="text-center">
				    <a href="firstmessage.do" class="btn btn-primary">1:1 문의</a>
				    <a href="main.do" class="btn btn-danger">메인으로</a>
			    </div>
			    <br/>
			</div>
		</div>
		

		<%@ include file="../footer.jsp" %>	
</body>
</html>




