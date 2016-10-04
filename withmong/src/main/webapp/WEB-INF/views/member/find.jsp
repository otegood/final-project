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
	
	$("#hidechangeform").hide();
	//아이디 찾을때 적는 입력칸
	$("#findid").click(function() {
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
			type:"POST",
			data:{name:inputedName, phone1:$("#phone1").val(), phone2:$("#phone2").val(), phone3:$("#phone3").val(), birth:inputedBirth},
			dataType:"json",
			success: function(data) {
				$("#writeId").text(data.id).css({'color':'blue'});
			},
			error: function() {
				$("#writeId").text("검색하신 정보와 일치하는 ID가 없습니다.").css({'color':'red'});
			}
		});
	});
	
	
	//비밀번호 찾을때 정보 적는 칸
	$("#findpw").click(function() {
		if(!$.trim($(":input[name='id']").val())) {
			alert("아이디는 필수 입력값입니다.");
			return false;
		}
		if(!$.trim($(":input[name='answer']").val())) {
			alert("답변은 필수 입력값입니다.");
			return false;
		}
		
		$.ajax({
			url:"../findpw.do",
			type:"POST",
			data:{id:$("#id").val(), question:$("#question").val(), answer:$("#answer").val()},
			dataType:"json",
			success: function(data) {
				
				$("#hidechangeform").show();
				$("#cngid").val(data.id);
				
			},
			error: function() {
				alert("아이디 혹은 질문 답변이 일치하지 않습니다.");
			}
		});
	});
	
	//비밀번호를 변경하였을 때
	$("#changepwdform").submit(function() {
		if(!$.trim($(":input[name='password']").val())) {
			alert("비밀번호는 필수 입력값입니다.");
			return false;
		}
		if(!$.trim($(":input[name='passwordCk']").val())) {
			alert("비밀번호 확인을 위해 비밀번호를 한번더 입력해 주시기 바랍니다.");
			return false;
		}
		if($(":input[name='password']").val() != $(":input[name='passwordCk']").val()){
			alert("비밀번호가 일치하지 않습니다.");
			return false;
		}
		
		alert("비밀번호 변경이 완료되었습니다.");
		return true;
	});
	
	
});
</script>

<title>Insert title here</title>
</head>
<body>
		<header><%@ include file="../header.jsp" %></header>
	
<div class="container" >
	<h2>아이디/비밀번호 찾기</h2>
    
	<ul class="nav nav-tabs nav-justified">
            <li class="active"><a href="#news" data-toggle="tab">ID 찾기</a></li>
            <li><a href="#ent" data-toggle="tab">비밀번호</a></li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane active" id="news">
                <div class="tab-pane" id="news">
                    <!-- id찾기 start -->
			<div class="panel panel-info searchid">
				<div class="panel-heading">
					<h4>ID 찾기</h4>
				</div>
				<form role="form" name="findidform" >
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
									<input type="date" name="birth" id="birth"/>
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
							<input type="button" value="찾기" id="findid" class="btn btn-success"/>
						</div>
					</div>
				</form>
			</div> <!-- id찾기 end -->
                    
                    
                </div>
            </div>
            <div class="tab-pane fade" id="ent">
                <div class="tab-pane" id="ent">
                   <div class="panel panel-info searchpwd">
				<div class="panel-heading">
					<h4>PASSWORD 찾기</h4>
				</div>
				<form role="form" name="searchpwdform">
					<div class="panel-body row">
						<div class="col-sm-8">
							<div class="panel-group row">
								<b class="col-sm-4 text-right">ID</b>
								<div class="col-sm-4">
									<input type="text" name="id" id="id"/> 
								</div>
							</div>
							<div class="panel-group row">
								<b class="col-sm-4 text-right">가입시 질문</b>
								<div class="col-sm-8">
									<select name="question" id="question">
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
									<input type="text" name="answer" id="answer"/>
								</div>
							</div>
						</div>
						<div class="col-sm-4 idsearchbtn text-center">
							<input type="button" value="찾기" id="findpw" class="btn btn-success"/>
						</div>
					</div>
				</form>
			</div> <!-- pwd찾기 end --> 
            <div class="panel panel-info searchpwd" id="hidechangeform">
				<div class="panel-heading">
					<h4>PASSWORD 변경하기</h4>
				</div>
				<form role="form" action="changepassword.do" method="post" name="changepwdform" id="changepwdform">
					<div class="panel-body row">
						<div class="col-sm-8">
							<div class="panel-group row">
								<b class="col-sm-4 text-right">비밀번호</b>
								<div class="col-sm-8">
									<input type="hidden" name="id" id="cngid"  /> 
									<input type="password" name="password" id="password"/> 
								</div>
							</div>
							
							<div class="panel-group row">
								<b class="col-sm-4 text-right">비밀번호확인</b>
								<div class="col-sm-8">
									<input type="password" name="passwordCk" id="passwordCk"/> 
								</div>
							</div>
						</div>
						<div class="col-sm-4 idsearchbtn text-center">
							<input type="submit" value="변경하기" id="changepw" class="btn btn-success"/>
						</div>
					</div>
				</form>
			</div> <!-- pwd변경하기 end -->        
                    
                </div>
            </div>
        </div>     
  <!--  ------------------------------------------------------------------------------------------------------------------- -->
</div>
		
		<%@ include file="../footer.jsp" %>	
</body>
</html>