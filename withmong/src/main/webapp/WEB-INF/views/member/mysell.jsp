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
				
				/*
				$("tbody").append("<tr>");
				$("tbody").append("<td>"+item.userid.id+"</td>");
				$("tbody").append("<td>"+item.productNo.title+"</td>");
				$("tbody").append("<td>"+item.productNo.price+"</td>");
				$("tbody").append("<td>"+item.regdate+"</td>");
				$("tbody").append("<td>"+item.buyCheck+"</td>");
				$("tbody").append("</tr>");
				*/
				
				var jsp = "<tr>";
				jsp += "<td class='text-center'><a href='getuserinfo.do?id="+item.userid.id+"'>"+item.userid.id+"</a></td>";
				jsp += "<td class='text-center'><a href='detail.do?productNo="+item.productNo.no+"'>"+item.productNo.title+"</a></td>";
				jsp += "<td class='text-center'>"+item.productNo.price+"p</td>";
				jsp += "<td class='text-center'>"+item.regdate+"</td>";
				if(item.buyCheck == 'W'){
					jsp += "<td class='text-center'><span class='label label-warning'>판매요청중</span></td>";
				} else if(item.buyCheck == 'Y'){
					jsp += "<td class='text-center''><span class='label label-success'>판매완료</span></td>";
				} else {
					jsp += "<td class='text-center'><span class='label label-default'>판매거부</span></td>";
					
				}
				
				if(item.buyCheck == 'W'){
					jsp += "<td class='text-center'><a class='btn btn-success btn-xs' href='confirmsell.do?no="+item.no+"'>확정</a> <a class='btn btn-danger btn-xs' href='denysell.do?no="+item.no+"'>거부</a></td>";
				} else {
					jsp += "<td></td>";
				}
				jsp += "</tr>";
				
				$("tbody").append(jsp);
				
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
			<col width="10%">
		</colgroup>
        <thead>
            <tr>
                <th class="text-center">구매자ID</th>
                <th class="text-center">상품명</th>
                <th class="text-center">포인트</th>
                <th class="text-center">거래일자</th>
                <th class="text-center">판매상태</th>
                <th class="text-center">판매확정</th>
            </tr>
        </thead>
        <tbody></tbody>
    </table>
	</div>
</div>
		

		<%@ include file="../footer.jsp" %>	
</body>
</html>




