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
<title>WithMong</title>
</head>
<body>
		<header><%@ include file="../header.jsp" %></header>
	
		<div class="container" >
			<div class="row">
				<h1 class="col-md-offset-2">쪽지 보내기</h1>
			<div class="col-md-8 col-md-offset-2 well">
				<form role="form" method="post" action="firstmessage.do" >
						<div class="form-group"> 
							<div class="form-group row">
								<label class="col-sm-2 text-right">받는사람</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="receiver.id" id="receiver.id" style="ime-mode:inactive" value="${param.id }" readonly="readonly" /> 
								</div> 
							</div>
							<div class="form-group row">
								<label class="col-sm-2 text-right">내용</label>
								<div class="col-sm-10">
									<textarea rows="6" class="form-control" cols="70" placeholder="메세지를 입력해주세요" style="resize:none;" name="contents"></textarea>
								</div>
							</div>
							<div class="form-group text-right">
								<input type="submit" class="btn btn-primary" value="보내기" />
								<a href="messagelist.do" class="btn btn-default">취소</a>
							</div>
					</div>
				</form>
			</div>
			</div>
		</div>
		
		<%@ include file="../footer.jsp" %>	
</body>
</html>









