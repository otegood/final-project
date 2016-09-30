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
	$.ajax({
		url:"../ckmysell.do",
		data:{},
		dataType:"json",
		success: function(data) {
			console.log(data);		// 전체 객체가 한꺼번에나옴
			$.each(data, function(index, item) {
				console.log(item);	// 객체가 하나씩나오게됨
				
				$("tbody").append("<tr>");
				$("tbody").append("<td>"+item.userid.id+"</td>");
				$("tbody").append("<td>"+item.productNo.title+"</td>");
				$("tbody").append("<td>"+item.productNo.price+"</td>");
				$("tbody").append("<td>"+item.regdate+"</td>");
				$("tbody").append("<td>"+item.buyCheck+"</td>");
				$("tbody").append("</tr>");
			});
		}
	});	
})

</script>
<title>Insert title here</title>
</head>
<body>
		<header><%@ include file="../header.jsp" %></header>
	
		<div class="container" >
			<div class="row">
				<h1>나의 판매내역</h1>
		<table class="table table-striped">
		<colgroup>
			<col width="10%">
			<col width="*%">
			<col width="10%">
			<col width="15%">
			<col width="10%">
		</colgroup>
        <thead>
            <tr>
                <th>구매자ID</th>
                <th>상품명</th>
                <th>포인트</th>
                <th>거래일자</th>
                <th>판매상태</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>구매자ID</th>
                <th>상품명</th>
                <th>포인트</th>
                <th>거래일자</th>
                <th>판매상태</th>
            </tr>
        </tfoot>
        <tbody></tbody>
    </table>
	</div>
</div>
		

		<%@ include file="../footer.jsp" %>	
</body>
</html>




