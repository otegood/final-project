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
<title>개인정보 보호취급</title>
</head>
<body>
	<header>
		<%@ include file="../header.jsp"%>
	</header>
	<!-- 내용 기입 -->
	<div class="container">
		<br>
		<div class="well">
			<h4 style="font-weight: bolder">개인정보 보호취급</h4>
			<div class="agreeArea">
				<div class="agreeIndex2">
					<textarea name="memo"
						style="width: 100%; height: 450px; border: 1 solid #333333; overflow: visible; text-overflow: ellipsis;">
1. 수집하는 개인정보 항목
회사는 회원가입, 상담, 서비스 신청 등을 위해 홈페이지(회원가입, 프로필 관리 등)와 어플리케이션(회원가입, 회원 정보 수정 등)에서 아래와 같은 개인정보를 수집하고 있습니다.
- 학생/학부모 회원 수집 항목 : 로그인ID, 이름, 성별, 생년월일, 휴대전화번호, 이메일, 자택 주소, 과외정보

2. 개인정보의 수집 및 이용목적
회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.
- 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산 : 콘텐츠 제공 , 구매 및 요금 결제
- 회원 관리 : 회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 불량회원의 부정 이용 방지와 비인가 사용 방지 , 가입 의사 확인 , 불만처리 등 민원처리 , 고지사항 전달
- 마케팅 및 광고에 활용 : 이벤트 등 광고성 정보 전달 , 접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계

3. 개인정보의 보유 및 이용기간
원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 아래와 같이 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다.
- 보존 항목 : 이름 , 생년월일 , 로그인ID , 비밀번호 , 자택 주소 , 휴대전화번호 , 이메일 , 결제기록
- 보존 근거 : 전자상거래 등에서의 소비자보호에 관한 법률
- 보존 기간 : 1년
- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년 (전자상거래 등에서의 소비자보호에 관한 법률)
- 부정 이용등에 관한 기록 : 10년
				</textarea>
				</div>
				<div style="text-align: center;">
					<a class="btn btn-default" href="main.do" style="border-width: thin; border: dotted; margin-top: 20px;">메인페이지로 돌아가기</a>
				</div>
			</div>
		</div>

	</div>
	<%@ include file="../footer.jsp"%>
</body>
</html>


