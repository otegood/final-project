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
		url:"../cartbyid.do",
		dataType:"json",
		success: function(data) {
			console.log(data);		// 전체 객체가 한꺼번에나옴
			if(data.length == 0) {
				$("tbody").append("<tr><td class='text-center' colspan='3'><strong><b style='color:red'>찜하신 내역이 없습니다.</b></strong></td></tr>");
				return false;
			} 
			$.each(data, function(index, item) {
				console.log(item);	// 객체가 하나씩나오게됨
				var jsp = "<tr>";
				jsp += "<td class='text-center'><a href='getuserinfo.do?id="+item.productNo.userid+"'>"+item.productNo.userid+"</a></td>";
				jsp += "<td class='text-center'><a href='detail.do?productNo="+item.productNo.no+"'>"+item.productNo.title+"</a></td>";
				jsp += "<td class='text-center'>"+item.productNo.price+"p</td>";
				jsp += "</tr>";
				
				$("tbody").append(jsp);
			});
		}
	});
	
	$('table th').css("backgroundColor","lightblue"); 	
	
})

</script>
<title>WithMong</title>
</head>
<body>
		<header><%@ include file="../header.jsp" %></header>
	
		<div class="container" >
			<div class="row">
				<h1>나의 찜 목록</h1>
				<table id="example" class="table table-striped table-bordered">
					<colgroup>
						<col width="10%">
						<col width="*%">
						<col width="10%">
					</colgroup>
			        <thead>
			            <tr>
			                <th class="text-center">판매자ID</th>
			                <th class="text-center">상품명</th>
			                <th class="text-center">포인트</th>
			            </tr>
			        </thead>
			        <tbody>
			        </tbody>
			    </table>
			</div>
		</div>
		

		<%@ include file="../footer.jsp" %>	
</body>
</html>




