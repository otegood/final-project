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
	.container {margin-top: 20px;}
	img.pro-img {width: 200px; height: 200px;}
	img.aa {width: 80px; height: 80px;}
	

	.ex-company {
	color: white;
	top: 0; left: 0;
	border;
	}
	
	strong {
	color: red;
	top: 0; left: 0;
	}
	
	#logo{
	width: 156px; 
	height: 150px;
	padding-top: 0px;
	padding-bottom: 100px;
	
	}
	
	.footer { 
	position: absolute;	
	bottom : 0;
	width: 100%;
	height: 50px;
	}

</style>
<title>WithMong</title>
</head>
<body>
	<%@ include file="../header.jsp" %>
<div class="container">
	<h1>회원 가입</h1>
		<div class="well">
			<form role="form" method="post" action="register.do">
				<div class="panel-body"> 
					<div class="panel-group row">
						<label class="col-sm-3 text-right">아이디</label>
						<div class="col-sm-9">
							<input type="text" name="mbid" id="mb_id" style="ime-mode:inactive"/> 
							<button type="button" class="btn btn-xs" onclick="mbidcheck()">중복확인</button>
						</div>
					</div>
					<div class="panel-group row">
						<label class="col-sm-3 text-right">비밀번호</label>
						<div class="col-sm-9">
							<input type="password" name="mbpwd" id="mb_pwd"/>
						</div>
					</div>
					<div class="panel-group row">
						<label class="col-sm-3 text-right">비밀번호 확인</label>
						<div class="col-sm-9">
							<input type="password" name="mbpwdck"  id="mb_pwd_ck"/>
						</div>
					</div>
					<div class="panel-group row">
						<label class="col-sm-3 text-right">이름</label>
						<div class="col-sm-9">
							<input type="text" name="mbname"/>
						</div>
					</div>
					<div class="panel-group row">
						<label class="col-sm-3 text-right">생년월일</label>
						<div class="col-sm-9">
							<input type="date" name="mbbirth"/>
						</div>
					</div>
					<div class="panel-group row">
						<label class="col-sm-3 text-right">이메일</label>
						<div class="col-sm-9">
							<input type="text" name="email">
						</div>
					</div>
					<div class="panel-group row">
						<label class="col-sm-3 text-right">핸드폰번호</label> 
						<div class="col-sm-9">
							<select name="mbphone1" id="mbp1">
								<option value="010" selected="selected">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="018">018</option>
								<option value="017">017</option>
							</select> - 
							
							<input type="text" name="mbphone2" id="mbp2" min="1" maxlength="4" size="6" style="ime-mode:disabled"/> - 
							<input type="text" name="mbphone3" id="mbp3" min="1" maxlength="4" size="6" style='ime-mode:disabled;'/>
							<button type="button" class="btn btn-xs" onclick="mbphonecheck()">중복확인</button>
						</div>
					</div>
					<div class="panel-group row">
						<label class="col-sm-3 text-right">성별</label>
						<div class="col-sm-9">
							<input type="radio" name="mbgender" value="M" checked="checked"/> 남성
							<input type="radio" name="mbgender" value="F"/> 여성
						</div>
					</div>
					<div class="panel-group row">
						<label class="col-sm-3 text-right">학력</label>
						<div class="col-sm-9">
							<input type="text" name="univ">
							<select name="mbquestion">
								<option value="1" selected="selected">고등학교</option>
								<option value="2">대학교</option>
								<option value="3">대학원</option>
							</select>
							<select name="mbquestion">
								<option value="1" selected="selected">재학</option>
								<option value="2">졸업</option>
								<option value="3">중퇴</option>
							</select>
						</div> 
					</div>
					<div class="panel-group row">
						<label class="col-sm-3 text-right">가입시 질문</label>
						<div class="col-sm-9">
							<select name="mbquestion">
								<option value="1" selected="selected">내 고향은?</option>
								<option value="2">내 어릴적 별명은?</option>
								<option value="3">내가 졸업한 초등학교 이름은?</option>
								<option value="4">내가 존경하는 사람은?</option>
								<option value="5">내가 가고싶은 나라는?</option>
							</select>
						</div> 
					</div>
					<div class="panel-group row">
						<label class="col-sm-3 text-right">답변</label>
						<div class="col-sm-9">
							<input type="text" name="mbanswer"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 text-right">프로필사진</label>
						<div class="col-sm-9">
							<input type="file" name="poster" id="poster">
					</div>
					<div class="form-group text-right">
						<input type="submit" class="btn btn-primary" value="가입" />
						<a href="main.do" class="btn btn-default">취소</a>
					</div>
				</div>
			</div>
			</form>
		</div>				
					
</div>
	
</body>
<footer>
	<%@ include file="../footer.jsp" %>
</footer>
</html>
