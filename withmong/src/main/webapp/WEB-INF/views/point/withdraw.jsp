<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript">
function showPrice() {
	
	$("#bar").show(function() {
		var price = $(":radio[name='point']:checked").val()
	
		$("#space").html("환전하실 금액은 "+price+" 원 입니다.");
		
		var balance = parseInt('${LOGIN_USER.point }') - price;
		
		$("#space2").html("회원님의 환전 후 포인트는: "+ balance +"P 입니다.  ")
		
		if(balance < 0) {
			$("#space2").html("회원님은 현재 포인트 잔액이 부족하여 환전을 할 수 없습니다. 포인트를 충전해주세요.")	
		}
		
	})
	
}
</script>

<style type="text/css">
.ex-company {
	color: white;
	top: 0;
	left: 0;
	border;
}

strong {
	color: yellow;
	top: 0;
	left: 0;
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

.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 70%;
	margin: auto;
}

#paging {
	display:;
	position: relative;
	line-height: 1em;
}

#paging .btn_prev {
	border: 1px solid #CCC;
	display: inline-block;
}

#paging .btn_next {
	border: 1px solid #CCC;
	display: inline-block;
	margin-left: 80px;
}

.panel {
	border: 0;
}

.table>thead>tr>th, .table>thead>tr>td {
	text-align: center;
	border: 1;
}
.w3-panel {
	text-align: center;
	border: 1;
	margin-bottom: 0px;
}

#changes, #changes>th {
	text-align: center;
	border: 1;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<header>
		<%@ include file="../header.jsp"%>
	</header>
	<!-- 내용 기입 -->
	<div class="container">
		<br>
		<div class="row" id="bar" style="display: none;">
			<div class="alert alert-danger" id="redbar" >
	   			 <p id=space style="margin-bottom: 0px;"></p>
			</div>
			<div class="alert alert-info" id="bluebar"  >
			 	<p id=space2 style="margin-bottom: 0px;"></p>
			</div>
		</div>
		<div class="row">
			<div class="row" style="margin-bottom: 40px;">
					<h2>포인트 환전</h2>
				</div>
			
			<form method="post" action="withdraw.do" role="form">
				<table id="changes" class="table table-striped table-condensed">
					<thead
						style="font-weight: bold; background-color: rgb(192, 192, 192);">
						<tr>
							<th>포인트(P)</th>
							<th>가격(원)</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<input type="radio" onclick="showPrice();" id="5,000" name="point" value="5000" checked="checked">
                     			 <label for="5,000">5,000</label> 
							</td>
							<td>5,000</td>
						</tr>
						<tr>
							<td>
								<input type="radio" onclick="showPrice();" id="10,000" name="point" value="10000">
                     			 <label for="10,000">10,000</label> 
							</td>
							<td>10,000</td>
						</tr>
						<tr>
							<td>
								<input type="radio" onclick="showPrice();" id="30,000" name="point" value="30000" >
                     			 <label for="30,000">30,000</label> 
							</td>
							<td>30,000</td>
						</tr>
						<tr>
							<td>
								<input type="radio" onclick="showPrice();" id="50,000" name="point" value="50000">
                     			 <label for="50,000">50,000</label>
							</td>
							<td>50,000</td>
						</tr>
						<tr>
							<td>
								<input type="radio" onclick="showPrice();" id="100,000" name="point" value="100000" >
                     			 <label for="100,000">100,000</label> 
							</td>
							<td>100,000</td>
						</tr>
					</tbody>
				</table>
				<button class="btn btn-success btn-lg pull-right">환전하기</button>	
			</form>
		</div>
		
		
	</div>	
		<%@ include file="../footer.jsp"%>
</body>
</html>


