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
	$("#report").submit(function() {
		alert("신고처리가 완료되었습니다.");
		return true;
	});
	
});

</script>
<title>WithMong</title>
</head>
<body>
		<header><%@ include file="../header.jsp" %></header>
	
		<div class="container" >
			<h2 class="col-md-offset-2"><span class="glyphicon glyphicon-warning-sign"> 신고하기</span></h2>
			<div class="well col-md-8 col-md-offset-2 row">
				<form role="form" method="post" action="report.do" id="report">
					<div class="form-group row">
						<label>신고할 사람</label>
						<input class="hidden" id="suspect" name="suspect" value="${LOGIN_USER.id }"/>
						<input class="form-control" id="reporter" name="reporter" value="${param.id }" readonly="readonly"/>
					</div>
					<div class="form-group row">
						<label class="text-right">신고 사유</label>
						<div>
							<select class="form-control" name="reason">
								<option value="상품 품질 관련" selected="selected">상품 품질 관련</option>
								<option value="시간 관련">시간관련</option>
								<option value="사기, 범죄관련">사기, 범죄 관련</option>
								<option value="기타">기타</option>
							</select>
						</div> 
					</div>
					<div class="form-group row">
						<label>내용</label>
						<input type="text" class="form-control" name="contents" />
					</div>
					<div class="form-group text-right">
						<input type="submit" class="btn btn-primary" value="저장" />
						
					</div>
				</form>
			</div>
		</div>
		

		<%@ include file="../footer.jsp" %>	
</body>
</html>




