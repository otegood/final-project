<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="current_page" value="register"/>

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
var idnotoverlap = false;
var phonenotoverlap = false;

$(function() {
	$("form").submit(function() {
		if(!$.trim($(":input[name='password']").val())) {
			alert("비밀번호는 필수 입력값입니다.");
			return false;
		}
		if(!$.trim($(":input[name='passwordCk']").val())) {
			alert("비밀번호 확인을 위해 비밀번호를 한번더 입력해 주시기 바랍니다.");
			return false;
		}
		if(!$.trim($(":input[name='email']").val())) {
			alert("이메일은 필수 입력값입니다.");
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
		if(!$.trim($(":input[name='schoolAbility1']").val())) {
			alert("학력는 필수 입력값입니다.");
			return false;
		}
		if(!$.trim($(":input[name='answer']").val())) {
			alert("답변은 필수 입력값입니다.");
			return false;
		}
		
		if($(":input[name='password']").val() != $(":input[name='passwordCk']").val()){
			alert("비밀번호가 일치하지 않습니다.")
			return false;
		}
		// 버튼을 체크 안했을때 안내문구 
		if(phonenotoverlap == false){
			alert("전화번호 중복체크를 해주세요.")
			return false;
		}
		alert("정보변경이 완료되었습니다.");
		return true;
	});
	
	// 전화번호 중복확인 하는거 만들기
	$("#phoneCheck").click(function (){
		
		var inputedPhone = $("#phone1").val()+"-"+$("#phone2").val()+"-"+$("#phone3").val();
		console.log(inputedPhone);
		$.ajax({
			url:"../phonecheck.do",
			data:{phone:inputedPhone},
			dataType:"json",
			success: function(data) {
				
				if(data.size == 1){
					$("#checkphone").text("작성하신 전화번호는 기존 사용중이신 번호입니다.").css({'color':'green'});
					phonenotoverlap = true;
				} else {
					$("#checkphone").text("사용 가능한 전화번호 입니다.").css({'color':'blue'});
					phonenotoverlap = true;
				}
			}
		});
	});
	
	// 비밀번호 두 개 동일한걸 썼는지 확인하는 
	$("#passwordCk").keyup(function() {
		var password = $("#password").val();
		var passwordCk	= $("#passwordCk").val();
		if(password != passwordCk){
			$("#passwordAl").text("비밀번호를 동일하게 적어주십시오.").css({'color':'red'});
		} else {
			$("#passwordAl").text("비밀번호와 일치합니다.").css({'color':'blue'});
		} 
	});
	
	
});

</script>
<title>정보 수정</title>
</head>
<body>
		<header><%@ include file="../header.jsp" %></header>
	
		<div class="container" >
		<h1>정보 수정</h1>
		<div class="well">
			<form role="form" method="post" action="myinfomodify.do" enctype="multipart/form-data">
				<div class="form-group"> 
					<div class="form-group row">
						<label class="col-sm-3 text-right">아이디</label>
						<div class="col-sm-9">
							<input type="text" name="id" id="id" readonly="readonly" style="ime-mode:inactive" value="${LOGIN_USER.id}"/>
							<p id="checkid"></p>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3 text-right">비밀번호</label>
						<div class="col-sm-9">
							<input type="password" name="password" id="password" placeholder="입력해주세요"/>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3 text-right">비밀번호 확인</label>
						<div class="col-sm-9">
							<input type="password" name="passwordCk"  id="passwordCk" placeholder="입력해주세요"/><p id="passwordAl"></p>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3 text-right">이름</label>
						<div class="col-sm-9">
							<input type="text" name="name" id="name" readonly="readonly" value="${LOGIN_USER.name }"/>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3 text-right">생년월일</label>
						<div class="col-sm-9">
							<fmt:formatDate value="${LOGIN_USER.birth }" pattern="yyyy년 MM월 dd일"/>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3 text-right">이메일</label>
						<div class="col-sm-9">
							<input type="text" name="email" id="email" value="${LOGIN_USER.email }" placeholder="입력해주세요"/>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3 text-right">핸드폰번호</label> 
						<div class="col-sm-9">
							<select name="phone1" id="phone1">
								<option value="010" ${LOGIN_USER.phone1 eq '010' ? 'selected=selected': ''}>010</option>
								<option value="011"${LOGIN_USER.phone1 eq '011' ? 'selected=selected': ''}>011</option>
								<option value="016"${LOGIN_USER.phone1 eq '016' ? 'selected=selected': ''}>016</option>
								<option value="018"${LOGIN_USER.phone1 eq '018' ? 'selected=selected': ''}>018</option>
								<option value="017"${LOGIN_USER.phone1 eq '017' ? 'selected=selected': ''}>017</option>
							</select> - 
							
							<input type="text" name="phone2" id="phone2" value="${LOGIN_USER.phone2 }" min="1" maxlength="4" size="6" style="ime-mode:disabled"/> - 
							<input type="text" name="phone3" id="phone3" value="${LOGIN_USER.phone3 }" min="1" maxlength="4" size="6" style='ime-mode:disabled;'/>
							<input type="hidden" id="phoneChk" value="N" />
							<button type="button" class="btn btn-xs" id="phoneCheck" >중복확인</button>
							<p id="checkphone"></p>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3 text-right">성별</label>
						<div class="col-sm-9">
							<input type="radio" name="gender" value="M" ${LOGIN_USER.gender eq 'M' ? 'checked=checked': ''}/> 남성
							<input type="radio" name="gender" value="F" ${LOGIN_USER.gender eq 'F' ? 'checked=checked': ''}/> 여성
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3 text-right">학력</label>
						<div class="col-sm-9">
							<input type="text" name="schoolAbility1" value="${LOGIN_USER.schoolAbility1}" size="5"/>
							<select name="schoolAbility2">
								<option value="고등학교" ${LOGIN_USER.schoolAbility2 eq '고등학교' ? 'selected=selected': ''}>고등학교</option>
								<option value="대학교" ${LOGIN_USER.schoolAbility2 eq '대학교' ? 'selected=selected': ''}>대학교</option>
								<option value="대학원" ${LOGIN_USER.schoolAbility2 eq '대학원' ? 'selected=selected': ''}>대학원</option>
							</select>
							<select name="schoolAbility3">
								<option value="재학" ${LOGIN_USER.schoolAbility2 eq '재학' ? 'selected=selected': ''}>재학</option>
								<option value="졸업" ${LOGIN_USER.schoolAbility2 eq '졸업' ? 'selected=selected': ''}>졸업</option>
								<option value="중퇴" ${LOGIN_USER.schoolAbility2 eq '중퇴' ? 'selected=selected': ''}>중퇴</option>
							</select>
						</div> 
					</div>
					<div class="form-group row">
						<label class="col-sm-3 text-right">가입시 질문</label>
						<div class="col-sm-9">
							<select name="question">
								<option value="내 고향은?" ${LOGIN_USER.question eq '내 고향은?' ? 'selected=selected': ''}>내 고향은?</option>
								<option value="내 어릴적 별명은?" ${LOGIN_USER.question eq '내 어릴적 별명은?' ? 'selected=selected': ''}>내 어릴적 별명은?</option>
								<option value="내가 존경하는 사람은?" ${LOGIN_USER.question eq '내가 존경하는 사람은?' ? 'selected=selected': ''}>내가 졸업한 초등학교 이름은?</option>
								<option value="내가 존경하는 사람은?" ${LOGIN_USER.question eq '내가 존경하는 사람은?' ? 'selected=selected': ''}>내가 존경하는 사람은?</option>
								<option value="내가 가고싶은 나라는?" ${LOGIN_USER.question eq '내가 가고싶은 나라는?' ? 'selected=selected': ''}>내가 가고싶은 나라는?</option>
							</select>
						</div> 
					</div>
					<div class="form-group row">
						<label class="col-sm-3 text-right">답변</label>
						<div class="col-sm-9">
							<input type="text" name="answer" value="${LOGIN_USER.answer }" placeholder="입력해주세요"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 text-right">프로필사진</label>
						<div class="col-sm-9">
							<input type="file" name="img" id="img">
					</div>
					<div class="form-group text-right">
						<input type="submit" class="btn btn-primary" value="수정" />
						<a href="main.do" class="btn btn-default">취소</a>
					</div>
				</div>
			</div>
			</form>
		</div>				
				
		</div>
		
		<%@ include file="../footer.jsp" %>	
</body>
</html>

