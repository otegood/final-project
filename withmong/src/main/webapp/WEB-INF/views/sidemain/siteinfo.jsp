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
<title>이용안내</title>
</head>
<body>
	<header>
		<%@ include file="../header.jsp"%>
	</header>
	<!-- 내용 기입 -->
	<div class="container">
		<br>
		<div class="well">
			<h2 style="font-weight: bolder">이용안내</h2>
			<br />
			<div class="agreeArea" >
				<div class="body-wrap" style="padding-left: 70px;">
					<img alt="" src="resources/images/default/guide1.png" style="width: 971px; height: 600px;">
				</div>
				<br />
				<div class="body-wrap" style="padding-left: 70px;">
					<img alt="" src="resources/images/default/guide2.png" style="width: 971px; height: 321px;">
				</div>
				<br />
				<div class="body-wrap" style="padding-left: 70px;">
					<img alt="" src="resources/images/default/guide3.png" style="width: 971px; height: 700px;">
				</div>
			
				<div class="agreeIndex2" style="padding-left: 70px;">
					<textarea name="memo"
						style="width: 971px; height: 450px; border: 1 solid #333333; overflow: visible; text-overflow: ellipsis;">
1. 재능 상품구분
재능 등록시 배송형 상품으로 설정한 재능
판매 및 구매 진행중인 재능
기본가격이 아닌 대화하기를 통해 합의된 가격 및 작업일로 판매 및 구매 진행중인 재능

2. 포인트란?
위드몽에 사용되는 재능마켓 사이트내 통용화폐이며, 마이페이지 > 충전을 통해 충전이 가능합니다.


3. 수익금 정산
재능 거래완료시 수익금이 자동 충전되며, 마이페이지 > 출금 출금신청 페이지를 통해 원하는 금액만큼 출금신청이 가능합니다.
- 출금신청시 회원별 설정된 판매수수료를 제외한 금액이 자동 계산되어 지며, 계산된 최종 금액만큼 입금처리됩니다.
- 입금처리는 출금신청 후 24시간 이내에 처리완료 됩니다.

3. 쪽지
위드몽 회원가입 후 활동하는 회원과 회원간에 실시간으로 대화를 할 수 있습니다.

4. 요청글
작업완료 상태에서 수정요청이 가능하며, 충분한 사유 및 판매자와 협의 후 수정요청이 가능하며, 판매자가 수정요청을 거부할 수 있습니다.
- 작업대기중, 작업진행증, 거래완료 상태에서는 수정요청이 불가하며, 기타 수정요청은 대화하기를 통해 가능합니다.
				</textarea>
				</div>
				<div style="text-align: center;">
					<a class="btn btn-default" href="main.do" style="border-width: thin; border: dotted; margin-top: 20px; margin-right: 80px;">메인페이지로 돌아가기</a>
				</div>
			</div>
		</div>

	</div>
	<%@ include file="../footer.jsp"%>
</body>
</html>


