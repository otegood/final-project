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
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
//페이지네이션 처리화 관련
  $(document).ready(function() {
	    $('#example').DataTable( {
	        "pagingType": "full_numbers"
	    } );
	} );
  </script>
<style type="text/css">
header {
	background-color: black;
}

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

.cash-btn {
	text-align: center;
	border: 1;
	color: red;
}

.remainPoint {
	text-align: right;
	color: red;
	border: 5;
}

#example {
	text-align: left;
}
</style>
<title>거래 내역</title>
</head>
<body>
	<header><%@ include file="../header.jsp"%></header>

	<div class="container">
				<div class="row" style="margin-bottom: 40px;">
					<h2>거래 내역</h2>
				</div>
				<!-- 거래내역 테이블 -->
		<table id="example" class="display" cellspacing="0" width="100%">
			<thead>
				<tr>
					<th>날짜</th>
					<th>충전 금액(원)</th>
					<th>환전 금액(원)</th>
				</tr>
			</thead>
			<tfoot>
				<tr class="cash-btn">
					<td></td>
					<td></td>
					<td>
						<div class="col-sm-6 col-sm-offset-6">
							<div class="col-sm-2"></div>
							<div class="col-sm-3">
								<a href="charge.do" class="btn btn-success">충전하기</a>
							</div>
							<div class="col-sm-2"></div>
							<div class="col-sm-3">
								<a href="withdraw.do" class="btn btn-warning">환전하기</a>
							</div>
							<div class="col-sm-2"></div>
						</div>

					</td>
				</tr>
			</tfoot>
			<tbody>
				<c:forEach var="point" items="${pointlist }">
					<tr>
						<td><fmt:formatDate value="${point.regdate }"
								pattern="yyyy.MM.dd" /></td>
						<td><fmt:formatNumber value="${point.charge }" type="number"></fmt:formatNumber>원</td>
						<td><fmt:formatNumber value="${point.withdraw }"
								type="number"></fmt:formatNumber>원</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<!-- 잔여포인트 확인 -->
		<div class="remainPoint" style="margin-top: 50px;">
			회원님의 잔여포인트: <c:out value="${loginedUser.point }"></c:out>P 
		</div>
	</div>


	<%@ include file="../footer.jsp"%>
</body>
</html>




