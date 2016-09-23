<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="current_page" value="login" /> 

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

<script type="text/javascript">

$(function() {
	$("#findid").submit(function() {
		if(!$.trim($(":input[name='name']").val())) {
			alert("이름은 필수 입력값입니다.");
			return false;
		}
		if(!$.trim($(":input[name='birth']").val())) {
			alert("생년월일은 필수 입력값입니다.");
			return false;
		}
		if(!$.trim($(":input[name='phone2']").val())) {
			alert("전화번호는 필수 입력값입니다.");
			return false;
		}
		if(!$.trim($(":input[name='phone3']").val())) {
			alert("전화번호는 필수 입력값입니다.");
			return false;
		}
		
		var inputedName = $("#name").val();
		var inputedPhone = $("#phone1").val()+"-"+$("#phone2").val()+"-"+$("#phone3").val();
		var inputedBirth = $("#birth").val();
		
		
		$.ajax({
			url:"../findid.do",
			data:{name:inputedName, phone:inputedPhone, birth:inputedBirth},
			dataType:"json",
			success: function(data) {
				console.log(data)
				
			}
		});
	});
});
</script>

<title>Insert title here</title>
</head>
<body>
		<header><%@ include file="../header.jsp" %></header>
	
		<div class="container" >
<div class="row idpwsearchbox">
		<div class="col-sm-6 col-sm-offset-3">
			<!-- id찾기 start -->
			<div class="panel panel-info searchid">
				<div class="panel-heading">
					<h4>ID 찾기</h4>
				</div>
				<form role="form" name="findidform" id="findid" onsubmit="return formidCheck()">
					<div class="panel-body row">
						<div class="col-sm-8">
							<div class="panel-group row">
								<b class="col-sm-4 text-right">이름</b>
								<div class="col-sm-8">
									<input type="text" name="name" id="name"/> 
								</div>
							</div>
							<div class="form-group row">
								<b class="col-sm-4 text-right">생년월일</b>
								<div class="col-sm-8">
									<input type="date" name="birth"/>
								</div>
							</div>
							<div class="panel-group row">
								<b class="col-sm-4 text-right">핸드폰번호</b> 
								<div class="col-sm-8">
									<select name="phone1" id="phone1">
										<option value="010">010</option>
										<option value="011">011</option>
										<option value="016">016</option>
										<option value="018">018</option>
										<option value="017">017</option>
									</select> - 
									<input type="text" name="phone2"  id="phone2" maxlength="4" size="4"/> - 
									<input type="text" name="phone3"  id="phone3" maxlength="4" size="4"/>
								</div>
							</div>
							<div class="panel-group row">
								<b class="col-sm-4 text-right">찾은 ID</b> 
								<div class="col-sm-8" >
									<p id="writeId"></p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 idsearchbtn text-center">
							<input type="submit" value="찾기" class="btn btn-success"/>
						</div>
					</div>
				</form>
			</div> <!-- id찾기 end -->
			
			<ul class="nav nav-tabs nav-justified">
			</ul>
			<ul class="nav nav-pills nav-justified">
			</ul>
			
			
			<!-- pwd찾기 start -->
			<div class="panel panel-info searchpwd">
				<div class="panel-heading">
					<h4>PASSWORD 찾기</h4>
				</div>
				<form role="form" action="searchpwd.jsp" method="post" name="searchpwdform" onsubmit="return formpwdCheck()">
					<div class="panel-body row">
						<div class="col-sm-8">
							<div class="panel-group row">
								<b class="col-sm-4 text-right">ID</b>
								<div class="col-sm-8">
									<input type="text" name="id" id="id"/> 
								</div>
							</div>
							<div class="panel-group row">
								<b class="col-sm-4 text-right">가입시 질문</b>
								<div class="col-sm-8">
									<select name="question">
										<option value="내 고향은?" selected="selected">내 고향은?</option>
										<option value="내 어릴적 별명은?">내 어릴적 별명은?</option>
										<option value="내가 졸업한 초등학교 이름은?">내가 졸업한 초등학교 이름은?</option>
										<option value="내가 존경하는 사람은?">내가 존경하는 사람은?</option>
										<option value="내가 가고싶은 나라는?">내가 가고싶은 나라는?</option>
									</select>
								</div> 
							</div>
							<div class="panel-group row">
								<b class="col-sm-4 text-right">답변</b>
								<div class="col-sm-8">
									<input type="text" name="answer"/>
								</div>
							</div>
						</div>
						<div class="col-sm-4 idsearchbtn text-center">
							<input type="submit" value="찾기" class="btn btn-success"/>
						</div>
					</div>
				</form>
			</div> <!-- pwd찾기 end -->
		</div>
	</div>
		</div>
		
		<%@ include file="../footer.jsp" %>	
</body>
</html>