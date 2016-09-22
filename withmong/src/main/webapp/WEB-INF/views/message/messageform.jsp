<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
		<header><%@ include file="../header.jsp" %></header>
	
		<div class="container" >
			<div class="row">
				<h1>쪽지 보내기</h1>
			<div class="well">
				<form role="form" method="post" action="firstmessage.do" >
					<div class="form-group"> 
						<div class="form-group row">
							<label class="col-sm-3 text-right">받는사람</label>
							<div class="col-sm-9">
								<input type="text" name="receiver" id="receiver" style="ime-mode:inactive" placeholder="입력해주세요"/> 
								<button type="button" class="btn btn-xs" >아이디확인</button>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-3 text-right">내용</label>
							<div class="col-sm-9">
								<textarea rows="6" cols="70" placeholder="입력해주세요" style="resize:none;" name="contents"></textarea>
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









