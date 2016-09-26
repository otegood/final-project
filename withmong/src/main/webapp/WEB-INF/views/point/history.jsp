<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="bootstrap.min.css" type="text/css" rel="stylesheet">
<link href="yourStyles.css" type="text/css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript">
 function checkedValue() {
	 var checkedVal = $(".radiobox:checked").val();
	 $("#result").html(checkedVal);
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
	border: 0;
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

		<div class="panel panel-default" id="panel" style="display: block;">
			<div class="panel-heading" id="heading"><h3>충전금액</h3></div>
			<div id="table">
				<table id="changes" class="table table-striped table-condensed">
					<thead
						style="font-weight: bold; background-color: rgb(192, 192, 192);">
						<tr>
							<th>가격</th>
							<th>-----------------------></th>
							<th>포인트</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
							<input class="radiobox" id="5,000" type="radio" value="5500" name="5,000"><label for = "5,000">5,000</label>
							</td>
							<td></td>
							<td><input id="price" name=""/></td>
						</tr>
						<tr>
							<td><input class="radiobox" id="10,000" type="radio" value="11000" name="10,000"><label for = "10,000">10,000</label></td>
							<td></td>
							<td><input id="price" name=""/></td>
						</tr>
						<tr>
							<td><input class="radiobox" id="30,000" type="radio" value="33000" name="30,000"><label for = "30,000">30,000</label></td>
							<td></td>
							<td><input id="price" name=""/></td>
						</tr>
						<tr>
							<td><input class="radiobox" id="50,000" type="radio" value="55000" name="50,000"><label for = "50,000">50,000</label></td>
							<td></td>
							<td><input id="price" name=""/></td>
						</tr>
						<tr>
							<td><input class="radiobox" id="100,000" type="radio" value="110,000" name="100,000"><label for = "100,000">100,000</label></td>
							<td></td>
							<td><input id="price" name=""/></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

		<%@ include file="../footer.jsp"%>
</body>
</html>


